/************************** Constants/Macros *****************************/
#define HW_GEN                   XAIE_DEV_GEN_AIE
#define XAIE_NUM_ROWS            9
#define XAIE_NUM_COLS            50
#define XAIE_BASE_ADDR           0x20000000000
#define XAIE_COL_SHIFT           23
#define XAIE_ROW_SHIFT           18
#define XAIE_SHIM_ROW            0
#define XAIE_RESERVED_ROW_START  0
#define XAIE_RESERVED_NUM_ROWS   0
#define XAIE_AIE_TILE_ROW_START  1
#define XAIE_AIE_TILE_NUM_ROWS   8
#define FOR_WRITE                0
#define FOR_READ                 1
#define __RESOURCE_MANAGER__

/***************************** Includes *********************************/
#include <fstream>
#include <adf.h>
extern "C"
{
  #include <xaiengine.h>
}
#include "adf/adf_api/AIEControlConfig.h"

XAie_InstDeclare(DevInst, &ConfigPtr);   // Declare global device instance


/************************** Functions/APIs *****************************/
  bool addergraph_load_elf(const std::string& work_path, std::vector<std::string>& elfInfoPath)
  {
	#ifdef __PS_INIT_AIE__

	std::string work_dir = (work_path.empty() ?  "./Work" : work_path);
	printf("Loading elfs of graph addergraph...\n");
	if(XAie_LoadElf(&DevInst, XAie_TileLoc(24, 1), (work_dir + "/aie/24_0/Release/24_0").c_str(), XAIE_ENABLE)!=XAIE_OK)
	{
		std::cerr << "ERROR: Failed to load elf for core(24,0)" << std::endl;
		return false;
	}
	if(XAie_LoadElf(&DevInst, XAie_TileLoc(25, 1), (work_dir + "/aie/25_0/Release/25_0").c_str(), XAIE_ENABLE)!=XAIE_OK)
	{
		std::cerr << "ERROR: Failed to load elf for core(25,0)" << std::endl;
		return false;
	}
	return true;
	#endif

  }

  void addergraph_init(const std::string& work_path)
  {

	printf("Initializing graph addergraph...\n");
    #ifdef __PS_INIT_AIE__



	std::string work_dir = (work_path.empty() ?  "./Work" : work_path);
	// S_MM2S_DMA_ch0_C25_R0 M_SOUTH_ch3_C25_R0 net2

	XAie_StrmConnCctEnable(&DevInst, XAie_TileLoc(25, 1), DMA, 0, SOUTH, 3);

	// S_SHIM_NORTH_ch3_C25 M_SHIM_SOUTH_ch0_C25 net2

	XAie_StrmConnCctEnable(&DevInst, XAie_TileLoc(25, 0), NORTH, 3, SOUTH, 0);

	// S_SHIM_SOUTH_ch0_C24 M_SHIM_NORTH_ch5_C24 net0

	XAie_StrmConnCctEnable(&DevInst, XAie_TileLoc(24, 0), SOUTH, 0, NORTH, 5);

	// S_SOUTH_ch5_C24_R0 M_NORTH_ch5_C24_R0 net0

	XAie_StrmConnCctEnable(&DevInst, XAie_TileLoc(24, 1), SOUTH, 5, NORTH, 5);

	// S_SOUTH_ch5_C24_R1 M_S2MM_DMA_ch0_C24_R1 net0

	XAie_StrmConnCctEnable(&DevInst, XAie_TileLoc(24, 2), SOUTH, 5, DMA, 0);


	printf("Resetting cores of graph addergraph...\n");
	XAie_CoreReset(&DevInst, XAie_TileLoc(24, 1));
	XAie_CoreUnreset(&DevInst, XAie_TileLoc(24, 1));
	XAie_CoreConfigureDone(&DevInst, XAie_TileLoc(24, 1));
	XAie_CoreReset(&DevInst, XAie_TileLoc(25, 1));
	XAie_CoreUnreset(&DevInst, XAie_TileLoc(25, 1));
	XAie_CoreConfigureDone(&DevInst, XAie_TileLoc(25, 1));

	printf("Configuring DMAs of graph addergraph...\n");

	//Setting buffer buf0
	{
		XAie_DmaDesc DmaInst;
		XAie_DmaDescInit(&DevInst, &DmaInst, XAie_TileLoc(24, 2));
		XAie_DmaSetAddrLen(&DmaInst, 0x0, 6144);
		XAie_DmaSetLock(&DmaInst, XAie_LockInit(0, 0), XAie_LockInit(0, 1));
		XAie_DmaSetNextBd(&DmaInst, 1, XAIE_ENABLE);
		XAie_DmaEnableBd(&DmaInst);
		XAie_DmaWriteBd(&DevInst, &DmaInst, XAie_TileLoc(24, 2), 0);
	}

	//Setting buffer buf0d
	{
		XAie_DmaDesc DmaInst;
		XAie_DmaDescInit(&DevInst, &DmaInst, XAie_TileLoc(24, 2));
		XAie_DmaSetAddrLen(&DmaInst, 0x2000, 6144);
		XAie_DmaSetLock(&DmaInst, XAie_LockInit(1, 0), XAie_LockInit(1, 1));
		XAie_DmaSetNextBd(&DmaInst, 0, XAIE_ENABLE);
		XAie_DmaEnableBd(&DmaInst);
		XAie_DmaWriteBd(&DevInst, &DmaInst, XAie_TileLoc(24, 2), 1);
	}

	XAie_DmaChannelPushBdToQueue(&DevInst, XAie_TileLoc(24, 2), 0, DMA_S2MM, 0);
	XAie_DmaChannelEnable(&DevInst, XAie_TileLoc(24, 2), 0, DMA_S2MM);

	//Setting buffer buf2
	{
		XAie_DmaDesc DmaInst;
		XAie_DmaDescInit(&DevInst, &DmaInst, XAie_TileLoc(25, 1));
		XAie_DmaSetAddrLen(&DmaInst, 0x4000, 6144);
		XAie_DmaSetLock(&DmaInst, XAie_LockInit(0, 1), XAie_LockInit(0, 0));
		XAie_DmaSetNextBd(&DmaInst, 1, XAIE_ENABLE);
		XAie_DmaEnableBd(&DmaInst);
		XAie_DmaWriteBd(&DevInst, &DmaInst, XAie_TileLoc(25, 1), 0);
	}

	//Setting buffer buf2d
	{
		XAie_DmaDesc DmaInst;
		XAie_DmaDescInit(&DevInst, &DmaInst, XAie_TileLoc(25, 1));
		XAie_DmaSetAddrLen(&DmaInst, 0x800, 6144);
		XAie_DmaSetLock(&DmaInst, XAie_LockInit(1, 1), XAie_LockInit(1, 0));
		XAie_DmaSetNextBd(&DmaInst, 0, XAIE_ENABLE);
		XAie_DmaEnableBd(&DmaInst);
		XAie_DmaWriteBd(&DevInst, &DmaInst, XAie_TileLoc(25, 1), 1);
	}

	XAie_DmaChannelPushBdToQueue(&DevInst, XAie_TileLoc(25, 1), 0, DMA_MM2S, 0);
	XAie_DmaChannelEnable(&DevInst, XAie_TileLoc(25, 1), 0, DMA_MM2S);

	printf("Configuring PL-Interface for graph addergraph...\n");
	XAie_PlIfBliBypassDisable(&DevInst, XAie_TileLoc(24, 0), 0);
	XAie_PlToAieIntfEnable (&DevInst, XAie_TileLoc(24, 0), 0, PLIF_WIDTH_32);
	XAie_AieToPlIntfEnable (&DevInst, XAie_TileLoc(25, 0), 0, PLIF_WIDTH_32);



    #endif

	return;
  }

 void addergraph_core_debug_halt()
  {
	printf("Putting core(s) of graph addergraph on halt state for debugging...\n");
	XAie_CoreDebugHalt(&DevInst, XAie_TileLoc(24, 1));
	XAie_CoreDebugHalt(&DevInst, XAie_TileLoc(25, 1));
	return;
  }

  void addergraph_core_enable()
  {
	printf("Enabling core(s) of graph addergraph...\n");
	XAie_CoreEnable(&DevInst, XAie_TileLoc(24,1 ));
	XAie_CoreEnable(&DevInst, XAie_TileLoc(25,1 ));
	return;
  }

/************************** Partition reset *****************************/

  void resetPartition()
  {
    XAie_ResetPartition(&DevInst);
  }


/************************** Error handling *****************************/

  void enableErrorHandling()
  {
    XAie_ErrorHandlingInit(&DevInst);
  }


/************************** Clock gating *****************************/

  void enableClockGating()
  {
    XAie_LocType locs[7] = {XAie_TileLoc(10, 0), XAie_TileLoc(24, 0), XAie_TileLoc(24, 1), XAie_TileLoc(24, 2), XAie_TileLoc(25, 0), XAie_TileLoc(25, 1), XAie_TileLoc(25, 2), };
    XAie_PmRequestTiles(&DevInst, locs, 7);
  }


/************************** Clear Partition Memories *****************************/

  void clearPartitionMems()
  {
    XAie_ClearPartitionMems(&DevInst);
  }


/************************** Collect Statically Allocated Resources *****************************/

  void dumpAllocatedRscsToFile(const std::string aieRscsFilePath)
  {
       XAie_SaveAllocatedRscsToFile(&DevInst, aieRscsFilePath.c_str());
  }


/************************** Graph Configurations  *****************************/

  adf::GraphConfig GraphConfigurations[] = {
  //{id, name, graphLoadElfFunc, graphInitFunc, graphDebugHalt, coreColumns, coreRows, iterMemColumns, iterMemRows, iterMemAddrs, triggered, plKernelInstanceNames, plAxiLiteModes, plDriverStartFuncs, plDriverCheckIPDoneFuncs}
    {0, "addergraph", &addergraph_load_elf, &addergraph_init, &addergraph_core_debug_halt, {24, 25}, {0, 0}, {24, 25}, {0, 1}, {0x2004, 0x4}, {0, 0}, {}, {}, {}, {},  }, 
  };
  const int NUM_GRAPH = 1;

/************************** PLIO Configurations  *****************************/

  adf::PLIOConfig PLIOConfigurations[] = {
  //{id, name, loginal_name, shim_column, slaveOrMaster, streamId}
    {0, "in0", "DataIn0", 24, 0, 0},
    {1, "out", "DataOut", 25, 1, 0},
  };
  const int NUM_PLIO = 2;


/************************** AIE driver and ADF API initializer *****************************/

  class InitializeAIEControl
  {
  public:
    InitializeAIEControl()
    {
      printf("Initializing AIE driver...\n");
      XAie_SetupConfig(ConfigPtr, HW_GEN, XAIE_BASE_ADDR, XAIE_COL_SHIFT,
                       XAIE_ROW_SHIFT, XAIE_NUM_COLS, XAIE_NUM_ROWS,
                       XAIE_SHIM_ROW, XAIE_RESERVED_ROW_START,
                       XAIE_RESERVED_NUM_ROWS, XAIE_AIE_TILE_ROW_START,
                       XAIE_AIE_TILE_NUM_ROWS);

      XAie_CfgInitialize(&(DevInst), &ConfigPtr);

      printf("Initializing ADF API...\n");

#if defined(__AIESIM__) && !defined(__CDO__)
      extern unsigned ess_debug;
#else
      unsigned ess_debug = false;
#endif

#ifdef __EXCLUDE_PL_CONTROL__
      bool exclude_pl_control = true;
#else
      bool exclude_pl_control = false;
#endif

#ifdef __CDO__
      int trace_config_stream_option = 2;
#else
      int trace_config_stream_option = 0;
#endif

      adf::initializeConfigurations(&DevInst, XAIE_NUM_COLS, XAIE_AIE_TILE_NUM_ROWS, XAIE_RESERVED_NUM_ROWS,
                                        GraphConfigurations, NUM_GRAPH,
                                        nullptr, 0,
                                        nullptr, 0,
                                        nullptr, 0,
                                        nullptr, 0,
                                        PLIOConfigurations, NUM_PLIO,
                                        nullptr, 0, trace_config_stream_option, nullptr,
                                        ess_debug, exclude_pl_control, true, nullptr
, false);

#if defined(__AIESIM__) && !defined(__CDO__)
      XAie_TurnEccOff(&DevInst);
#else
      XAie_TurnEccOn(&DevInst);
#endif
    }
  } initAIEControl;



#if !defined(__CDO__)

// Kernel Stub Definition
  void n2n_trans1(input_window<short> *,output_window<short> *) { /* Stub */ } 
  void n2n_trans2(input_window<short> *,output_window<short> *) { /* Stub */ } 
#endif
