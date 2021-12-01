#include <iostream> 
#include <cstring>
#include "gen_cdo.h"
#include "../c_rts/aie_control.cpp"
extern "C" {
#include "cdo_driver.h"
}

void initializeCDOGenerator(bool AXIdebug, bool endianness){
	if(AXIdebug)
		EnAXIdebug(); // Enables AXI-MM prints for configs being added in CDO, helpful for debugging
	setEndianness(endianness);
	
	XAie_SetIOBackend(&DevInst, XAIE_IO_BACKEND_CDO); // Set C-RTS Library to run for CDO Mode 
}

void addInitConfigToCDO(const std::string &workDirPath){
	addergraph_init(workDirPath);
}

void addCoreEnableToCDO(){
	addergraph_core_enable();
}

void addDbgHaltToCDO(){
	addergraph_core_debug_halt();
}

void addResetConfigToCDO(){
	resetPartition();
}

void addErrorHandlingToCDO(){
	enableErrorHandling();
}

void addClockGatingToCDO(){
	enableClockGating();
}

void addMemClearingConfigToCDO(){
	clearPartitionMems();
}

void addAieElfsToCDO(const std::string &workDirPath){
	std::vector<std::string> elfInfoPath;
	if(!addergraph_load_elf(workDirPath, elfInfoPath))
		exit(EXIT_FAILURE);
}

void generateCDOBinariesSeparately(const std::string &workDirPath, bool AXIdebug) {

	const std::string initCfgCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_init.bin";
	const std::string coreEnableCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_enable.bin";
	const std::string dbgHaltCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_debug.bin";
	const std::string resetCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_reset.bin";
	const std::string errorHandlingCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_error_handling.bin";
	const std::string clockGatingCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_clock_gating.bin";
	const std::string memClearingCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_mem_clear.bin";
	const std::string elfsCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_elfs.bin";
	
	// ******************************* Reset CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: Reset Configuration\n";
	startCDOFileStream(resetCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add reset configuration to: aie_cdo_reset.bin
	addResetConfigToCDO();
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: Reset Configuration\n\n";

	// ******************************* Clock Gating CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: Clock Gating Configuration\n";
	startCDOFileStream(clockGatingCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add clock gating configuration to: aie_cdo_clock_gating.bin
	addClockGatingToCDO();
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: Clock Gating Configuration\n\n";

	// ******************************* Partition Memory Clearing CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: Memory Clearing Configuration\n";
	startCDOFileStream(memClearingCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add memory clearing configuration to: aie_cdo_mem_clear.bin
	addMemClearingConfigToCDO();
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: Memory Clearing Configurationn\n";

	// ******************************* Error Handling CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: Error Handling Configuration\n";
	startCDOFileStream(errorHandlingCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add error handling configuration to: aie_cdo_error_handling.bin
	addErrorHandlingToCDO();
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: Error Handling Configuration\n\n";

	// ******************************* Convert AIE Elfs To CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: AIE ELF Configuration\n";
	startCDOFileStream(elfsCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add AIE ELFs configuration to: aie_cdo_elfs.bin
	addAieElfsToCDO(workDirPath);
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: AIE ELF Configuration\n\n";

	// ******************************* Initial configuration CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: Initial Configuration (SHIM and AIE Array)\n";
	startCDOFileStream(initCfgCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add init configuration to: aie_cdo_init.bin
	addInitConfigToCDO(workDirPath);
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: Initial Configuration (SHIM and AIE Array)\n\n";

	// ******************************* AIE core enable CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: Core Enable Configuration\n";
	startCDOFileStream(coreEnableCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add AIE core enable configuration to: aie_cdo_enable.bin
	addCoreEnableToCDO();
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: Core Enable Configuration\n\n";

	// ******************************* AIE Core debug Halt CDO ******************************* //
	if(AXIdebug)
		std::cout << "START: Core Debug Halt Configuration\n";
	startCDOFileStream(dbgHaltCDOFilePath.c_str());
	FileHeader();// Add CDO-v2 file header 
	// Add AIE core debug-halt configuration to: aie_cdo_debug.bin
	addDbgHaltToCDO();
	configureHeader(); // Update CDO header for length and check-sum
	endCurrentCDOFileStream();
	if(AXIdebug)
		std::cout << "DONE: Core Debug Halt Configuration\n\n";

	// ******************************* Collect statically allocated resources ******************************* //
	const std::string aieRscsFilePath = workDirPath + "/config/aie_resources.bin";
	dumpAllocatedRscsToFile(aieRscsFilePath);
}
