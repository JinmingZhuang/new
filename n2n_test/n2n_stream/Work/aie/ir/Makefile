.PHONY: all n2n_trans1.cc n2n_trans2.cc clean

ifeq ($(XILINX_VITIS_AIETOOLS),)
XILINX_VITIS_AIETOOLS:=${XILINX_VITIS}/aietools
endif
ifeq ($(CARDANO_AIE_ARCH_MODEL_DIR),)
CARDANO_AIE_ARCH_MODEL_DIR := ${XILINX_VITIS_AIETOOLS}/data/versal_prod/lib
endif
XCHESSCC := xchesscc

INCLUDE_PATH := -I ../../.. -I ${XILINX_VITIS_AIETOOLS}/include -I /home/Jinming/research/aie_project/n2n_test/n2n_stream/aie -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libcxx-lite/include -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libs/libcxx-9.0.0/include-lite -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime/include

all: n2n_trans1.cc n2n_trans2.cc 

n2n_trans1.cc:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-disable-llvm-passes,-g -D__AIENGINE__ -D__AIEARCH__=1 ${INCLUDE_PATH} /home/Jinming/research/aie_project/n2n_test/n2n_stream/aie/n2n_trans1.cc -o K0_n2n_trans1.ll;

n2n_trans2.cc:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-disable-llvm-passes,-g -D__AIENGINE__ -D__AIEARCH__=1 ${INCLUDE_PATH} /home/Jinming/research/aie_project/n2n_test/n2n_stream/aie/n2n_trans2.cc -o K1_n2n_trans2.ll;

clean:
	rm -rf K0_n2n_trans1.ll K1_n2n_trans2.ll