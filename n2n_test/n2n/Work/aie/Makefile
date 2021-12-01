.PHONY: all 24_0 25_0 clean

ifeq ($(XILINX_VITIS_AIETOOLS),)
XILINX_VITIS_AIETOOLS:=${XILINX_VITIS}/aietools
endif
ifeq ($(CARDANO_AIE_ARCH_MODEL_DIR),)
CARDANO_AIE_ARCH_MODEL_DIR := ${XILINX_VITIS_AIETOOLS}/data/versal_prod/lib
endif
XCHESSMK := xchessmk
XCHESSCC := xchesscc

INCLUDE_PATH := -I ../.. -I ${XILINX_VITIS_AIETOOLS}/include -I /home/Jinming/research/aie_project/n2n/aie -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libcxx-lite/include -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libs/libcxx-9.0.0/include-lite -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime/include

.EXPORT_ALL_VARIABLES:
export XILINX_CARDANO_XLOPT_OPTIONS=-xlopt=1 -mapped-json=aie_graph_mapped.json

all: 24_0 25_0 

24_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-disable-llvm-passes,-g -D__AIENGINE__ -D__AIEARCH__=1 ${INCLUDE_PATH} /home/Jinming/research/aie_project/n2n/Work/aie/24_0/src/24_0.cc +Wllvm,-Xclang,-mlink-bitcode-file,-Xclang,ir/K0_n2n_trans1.ll -o ir/24_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/bin/opt -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt.so -passes=xlopt ir/24_0_orig.ll -o ir/24_0.ll 2>24_0/xlopt.log;
24_0_llopt: 24_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/bin/opt -S ir/24_0.ll -o ir/24_0.ll 2>/dev/null;

25_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-disable-llvm-passes,-g -D__AIENGINE__ -D__AIEARCH__=1 ${INCLUDE_PATH} /home/Jinming/research/aie_project/n2n/Work/aie/25_0/src/25_0.cc +Wllvm,-Xclang,-mlink-bitcode-file,-Xclang,ir/K1_n2n_trans2.ll -o ir/25_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/bin/opt -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt.so -passes=xlopt ir/25_0_orig.ll -o ir/25_0.ll 2>25_0/xlopt.log;
25_0_llopt: 25_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/bin/opt -S ir/25_0.ll -o ir/25_0.ll 2>/dev/null;

24_0: 24_0_xlopt 24_0_llopt
	(${XCHESSMK} -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR}  +P 4 -v  -DDEPLOYMENT_ELF=1  +o ../Release 24_0/scripts/24_0.prx) 2>&1 | tee 24_0/24_0.log
	(coreverify -obj 24_0 -s 1024 -pm 16384)
25_0: 25_0_xlopt 25_0_llopt
	(${XCHESSMK} -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR}  +P 4 -v  -DDEPLOYMENT_ELF=1  +o ../Release 25_0/scripts/25_0.prx) 2>&1 | tee 25_0/25_0.log
	(coreverify -obj 25_0 -s 1024 -pm 16384)

clean:
	(rm -rf 24_0/Release)
	(rm -rf 25_0/Release)
