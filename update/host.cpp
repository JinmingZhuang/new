/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

#include "aie_graph.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fstream>

// This is used for the PL Kernels
#include "xrt/xrt.h"
#include "xrt/experimental/xrt_kernel.h"

// Using the ADF API that call XRT API
#include "adf/adf_api/XRTConfig.h"
using namespace std;
using namespace adf;

static std::vector<char> load_xclbin(xrtDeviceHandle device, const std::string& fnm) {
    if (fnm.empty()) throw std::runtime_error("No xclbin specified");

    // load bit stream
    std::ifstream stream(fnm);
    stream.seekg(0, stream.end);
    size_t size = stream.tellg();
    stream.seekg(0, stream.beg);

    std::vector<char> header(size);
    stream.read(header.data(), size);

    auto top = reinterpret_cast<const axlf*>(header.data());
    if (xrtDeviceLoadXclbin(device, top)) throw std::runtime_error("Xclbin loading failed");

    return header;
}

#define H1 64
#define W1 48
#define DATA_SIZE H1*W1


int main(int argc, char** argv) {
    //////////////////////////////////////////
    // Open xclbin
    //////////////////////////////////////////
    if(argc != 2) {
    std::cout << "Usage: " << argv[0] <<" <xclbin>" << std::endl;
    return EXIT_FAILURE;
    }
    char* xclbinFilename = argv[1];
    //////////////////////////////////////////
    // Open xclbin
    //////////////////////////////////////////
    auto dhdl = xrtDeviceOpen(0); // Open Device the local device
    if (dhdl == nullptr) throw std::runtime_error("No valid device handle found. Make sure using right xclOpen index.");
    auto xclbin = load_xclbin(dhdl, xclbinFilename);
    auto top = reinterpret_cast<const axlf*>(xclbin.data());
    adf::registerXRT(dhdl, top->m_header.uuid);

    int size = DATA_SIZE;
 

    uint16_t DataInput0[size];
    uint16_t pre[H1][W1];
    uint16_t golden[size];

    for (int i = 0; i < size; i++) {
        DataInput0[i] = rand() % 5;
    }


    for (int c2 = 0; c2 < W1; c2++) {
        for (int r1 = 0; r1 < H1; r1++){
            pre[r1][c2] = DataInput0[r1+c2*H1];
        }
    }
    //////////////////////////////////////////
    // input memory
    // Allocating the input size of sizeIn to MM2S
    // This is using low-level XRT call xclAllocBO to allocate the memory
    //////////////////////////////////////////

    xrtBufferHandle in_bohdl0 = xrtBOAlloc(dhdl, size * sizeof(uint16_t), 0, 0);
    auto in_bomapped0 = reinterpret_cast<uint16_t*>(xrtBOMap(in_bohdl0));
    memcpy(in_bomapped0, DataInput0, size * sizeof(uint16_t));
    printf("Input memory virtual addr 0x%px\n", in_bomapped0);


    //////////////////////////////////////////
    // output memory
    // Allocating the output size of sizeOut to S2MM
    // This is using low-level XRT call xclAllocBO to allocate the memory
    //////////////////////////////////////////

    xrtBufferHandle out_bohdl = xrtBOAlloc(dhdl, size * sizeof(uint16_t), 0, 0);
    auto out_bomapped = reinterpret_cast<uint16_t*>(xrtBOMap(out_bohdl));
    memset(out_bomapped, 0xABCDEF00, size * sizeof(uint16_t));
    printf("Output memory virtual addr 0x%px\n", out_bomapped);
	
    printf("graph init. This does nothing because CDO in boot PDI already configures AIE.\n");
    addergraph.init();
    printf("graph run\n");
    event::handle handle = event::start_profiling(DataIn0,event::io_total_stream_running_to_idle_cycles);
    if(handle==event::invalid_handle){
      printf("ERROR:Invalid handle. Only two performance counter in a AIE-PL interface tile\n");
      return 1;
    }
    
    addergraph.run(1);

    //////////////////////////////////////////
    // mm2s ip
    // Using the xrtPLKernelOpen function to manually control the PL Kernel
    // that is outside of the AI Engine graph
    //////////////////////////////////////////
    auto fpga_begin = std::chrono::high_resolution_clock::now();
    xrtKernelHandle mm2s_khdl1 = xrtPLKernelOpen(dhdl, top->m_header.uuid, "pl_mm2s:{pl_mm2s_1}");
    // Need to provide the kernel handle, and the argument order of the kernel arguments
    // Here the in_bohdl is the input buffer, the nullptr is the streaming interface and must be null,
    // lastly, the size of the data. This info can be found in the kernel definition.
    xrtRunHandle mm2s_rhdl1 = xrtKernelRun(mm2s_khdl1, in_bohdl0, nullptr, size);
    printf("run pl_mm2s_1\n");


    //////////////////////////////////////////
    // s2mm ip
    // Using the xrtPLKernelOpen function to manually control the PL Kernel
    // that is outside of the AI Engine graph
    //////////////////////////////////////////
	
    xrtKernelHandle s2mm_khdl = xrtPLKernelOpen(dhdl, top->m_header.uuid, "pl_s2mm");
    // Need to provide the kernel handle, and the argument order of the kernel arguments
    // Here the out_bohdl is the output buffer, the nullptr is the streaming interface and must be null,
    // lastly, the size of the data. This info can be found in the kernel definition.
    xrtRunHandle s2mm_rhdl = xrtKernelRun(s2mm_khdl, out_bohdl, nullptr, size);
    printf("run pl_s2mm\n");

    //////////////////////////////////////////
    // graph execution for AIE
    //////////////////////////////////////////

    
    

    //////////////////////////////////////////
    // wait for mm2s done
    //////////////////////////////////////////

    auto state = xrtRunWait(mm2s_rhdl1);
    std::cout << "mm2s_1 completed with status(" << state << ")\n";
    xrtRunClose(mm2s_rhdl1);
    xrtKernelClose(mm2s_khdl1);


    //////////////////////////////////////////
    // wait for s2mm done
    //////////////////////////////////////////

    state = xrtRunWait(s2mm_rhdl);
    std::cout << "s2mm completed with status(" << state << ")\n";
    xrtRunClose(s2mm_rhdl);
    xrtKernelClose(s2mm_khdl);
    auto fpga_end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> fpga_duration = fpga_end - fpga_begin;
    std::cout << "FPGA Time: " << fpga_duration.count()/1000 << " s" << std::endl;
    //////////////////////////////////////////
    // Comparing the execution data to the golden data
    //////////////////////////////////////////
    
    addergraph.wait();
    printf("graph end\n");
    long long cycle_count = event::read_profiling(handle);
    event::stop_profiling(handle);
    double bandwidth = (double)size * sizeof(int16) / (cycle_count * 1e-9);
    std::cout << "Bandwidth: " << bandwidth<< " B/s" << std::endl;
    for(int w1=0;w1<W1;w1++){
        for(int h1=0;h1<H1;h1++){
            golden[h1+w1*H1]=pre[h1][w1];
        }
    }


    int errorCount = 0;
    {
        for (int i = 0; i < size; i++) {
            if ((signed)out_bomapped[i] != golden[i]) {
                printf("Error found @ %d, %d != %d\n", i, out_bomapped[i], golden[i]);
                errorCount++;
            }
        }

        if (errorCount)
            printf("Test failed with %d errors\n", errorCount);
        else
            printf("TEST PASSED\n");
    }

    //////////////////////////////////////////
    // clean up XRT
    //////////////////////////////////////////

    std::cout << "Releasing remaining XRT objects...\n";
    xrtBOFree(in_bohdl0);
    xrtBOFree(out_bohdl);
    xrtDeviceClose(dhdl);

    return errorCount;
}
