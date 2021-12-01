#include <iostream>
#include "adf/adf_api/AIEControlConfig.h"


/************************** Graph Configurations  *****************************/

  adf::GraphConfig GraphConfigurations[] = {
  //{id, name, graphLoadElfFunc, graphInitFunc, graphDebugHalt, coreColumns, coreRows, iterMemColumns, iterMemRows, iterMemAddrs, triggered, plKernelInstanceNames, plAxiLiteModes, plDriverStartFuncs, plDriverCheckIPDoneFuncs}
    {0, "addergraph", nullptr, nullptr, nullptr, {24, 25}, {0, 0}, {24, 25}, {0, 1}, {0x2004, 0x4}, {0, 0}, {}, {}, {}, {},  }, 
  };
  const int NUM_GRAPH = 1;

/************************** PLIO Configurations  *****************************/

  adf::PLIOConfig PLIOConfigurations[] = {
  //{id, name, loginal_name, shim_column, slaveOrMaster, streamId}
    {0, "in0", "DataIn0", 24, 0, 0},
    {1, "out", "DataOut", 25, 1, 0},
  };
  const int NUM_PLIO = 2;


/************************** ADF API initializer *****************************/

  class InitializeAIEControlXRT
  {
  public:
    InitializeAIEControlXRT()
    {
      std::cout<<"Initializing ADF API..."<<std::endl;
#ifdef __EXCLUDE_PL_CONTROL__
      bool exclude_pl_control = true;
#else
      bool exclude_pl_control = false;
#endif
      adf::initializeConfigurations(nullptr, 0, 0, 0,
                                    GraphConfigurations, NUM_GRAPH,
                                    nullptr, 0,
                                    nullptr, 0,
                                    nullptr, 0,
                                    nullptr, 0,
                                    PLIOConfigurations, NUM_PLIO,
                                    nullptr, 0, 0, nullptr,
                                    false, exclude_pl_control, false, nullptr
                                    , false);

    }
  } initAIEControlXRT;



#if !defined(__CDO__)

// Kernel Stub Definition
  void n2n_trans1(input_window<short> *,output_window<short> *) { /* Stub */ } 
  void n2n_trans2(input_window<short> *,output_window<short> *) { /* Stub */ } 
#endif
