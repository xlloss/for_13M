//==============================================================================
//
//  File        : sensor_ar1335.c
//  Description : Firmware Sensor Control File
//  Revision    : 1.0
//  Copy From sensor_ar1820.c by Slash
//=============================================================================

//==============================================================================
//
//                              INCLUDE FILE
//
//==============================================================================

#include "includes_fw.h"
#include "Customer_config.h"

#if (SENSOR_EN)
#if (BIND_SENSOR_AR1335)

#include "mmpf_sensor.h"
#include "sensor_Mod_Remapping.h"
#include "isp_if.h"
#include "mmpf_i2cm.h"
#include "sensor_ar1335.h"

#define USE_13M 1

//==============================================================================
//
//                              GLOBAL VARIABLE
//
//==============================================================================

// Resolution Table
MMPF_SENSOR_RESOLUTION m_SensorRes = 
{
    1,				// ubSensorModeNum 
    0,				// ubDefPreviewMode 
    0,				// ubDefCaptureMode 
    3000,           //usPixelSize

//  Mode0
    {1},			// usVifGrabStX 
    {1},			// usVifGrabStY 

#if USE_13M
    {4008},		    // usVifGrabW 
    {3008},		    // usVifGrabH 
#else
    {1928},		    // usVifGrabW 
    {1088},		    // usVifGrabH 
#endif

    {1},
    {1},
    {8},			// usBayerDummyInX 
    {8},			// usBayerDummyInY 

#if USE_13M
    {4000},		    // usBayerOutW 
    {3000},		    // usBayerOutH 
    {4000},		    // usScalInputW 
    {3000},		    // usScalInputH 
    {300},		    // usTargetFpsx10 
    {5152},		    // usVsyncLine   //(Reg 0x22 0x23) + 1
#else
    {1920},		    // usBayerOutW 
    {1080},		    // usBayerOutH 
    {1920},		    // usScalInputW 
    {1080},		    // usScalInputH 
    {300},		    // usTargetFpsx10 
    {1716},		    // usVsyncLine   //(Reg 0x22 0x23) + 1
#endif


    {1},            // ubWBinningN 
    {1},            // ubWBinningN 
    {1},            // ubWBinningN 
    {1},            // ubWBinningN 
    {1},            // ubCustIQmode
    {1}	            // ubCustAEmode  
};


// OPR Table and Vif Setting
MMPF_SENSOR_OPR_TABLE       m_OprTable;
MMPF_SENSOR_VIF_SETTING     m_VifSetting;

// IQ Table
const ISP_UINT8 Sensor_IQ_CompressedText[] = 
{
#include "isp_8428_iq_data_v2_AR1820_v1.xls.ciq.txt"
};

// I2cm Attribute
static MMP_I2CM_ATTR m_I2cmAttr = 
{
    MMP_I2CM0,  // i2cmID
    0x36,       // ubSlaveAddr
    16,         // ubRegLen
    16,         // ubDataLen
    0,          // ubDelayTime
    MMP_FALSE,  // bDelayWaitEn
    MMP_TRUE,   // bInputFilterEn
    MMP_FALSE,  // b10BitModeEn
    MMP_FALSE,  // bClkStretchEn
    0,          // ubSlaveAddr1
    0,          // ubDelayCycle
    0,          // ubPadNum
    250000,     // ulI2cmSpeed 250KHZ
    MMP_TRUE,   // bOsProtectEn
    0,       // sw_clk_pin
    0,       // sw_data_pin
    MMP_FALSE,  // bRfclModeEn
    MMP_FALSE,  // bWfclModeEn
    MMP_FALSE,	// bRepeatModeEn
    0           // ubVifPioMdlId
};

// 3A Timing
MMPF_SENSOR_AWBTIMIMG   m_AwbTime    = 
{
	6,	/* ubPeriod */
	1, 	/* ubDoAWBFrmCnt */
	3	/* ubDoCaliFrmCnt */
};

MMPF_SENSOR_AETIMIMG    m_AeTime     = 
{	
	4, 	/* ubPeriod */
	0, 	/* ubFrmStSetShutFrmCnt */
	0	/* ubFrmStSetGainFrmCnt */
};

MMPF_SENSOR_AFTIMIMG    m_AfTime     = 
{
	1, 	/* ubPeriod */
	0	/* ubDoAFFrmCnt */
};

//==============================================================================
//
//                              FUNCTIONS
//
//==============================================================================



ISP_UINT16 SNR_AR1335_Reg_Init_Customer[] =
{
    //XMCLK=24000000
    // HW reset
    //STATE=Sensor Reset, 1
    //STATE=Sensor Reset, 0
    
	//SW Reset
	0x301A, 0x0001,
	SENSOR_DELAY_REG,	100,

	//Stop Streaming
	0x3F3C, 0x0002, 	// ANALOG_CONTROL9
	0x3FE0, 0x0001, 	// BIST_CONTROL
	0x301A, 0x0018, 	// RESET_REGISTER
	0x3FE0, 0x0000, 	// BIST_CONTROL

	//Init Configure
	0x301A, 0x0018,
    
	//corrections_recommended
	0x3042, 0x1004,
	0x30D2, 0x0120,
	0x30D4, 0x0000,
	0x3090, 0x0000,
	0x30FC, 0x0060,
	0x30FE, 0x0060,
	0x31E0, 0x0781,
	0x3180, 0x9434,
	0x317C, 0xEFF4,
	0x30EE, 0x613E,
	0x3F2C, 0x4428,
	
	//pixel_timing_recommended
	0x3D00, 0x0446,
	0x3D02, 0x4C66,
	0x3D04, 0xFFFF,
	0x3D06, 0xFFFF,
	0x3D08, 0x5E40,
	0x3D0A, 0x1146,
	0x3D0C, 0x5D41,
	0x3D0E, 0x1088,
	0x3D10, 0x8342,
	0x3D12, 0x00C0,
	0x3D14, 0x5580,
	0x3D16, 0x5B83,
	0x3D18, 0x6084,
	0x3D1A, 0x5A8D,
	0x3D1C, 0x00C0,
	0x3D1E, 0x8342,
	0x3D20, 0x925A,
	0x3D22, 0x8664,
	0x3D24, 0x1030,
	0x3D26, 0x801C,
	0x3D28, 0x00A0,
	0x3D2A, 0x56B0,
	0x3D2C, 0x5788,
	0x3D2E, 0x5150,
	0x3D30, 0x824D,
	0x3D32, 0x8D58,
	0x3D34, 0x58D2,
	0x3D36, 0x438A,
	0x3D38, 0x4592,
	0x3D3A, 0x458A,
	0x3D3C, 0x4389,
	0x3D3E, 0x51FF,
	0x3D40, 0x8451,
	0x3D42, 0x8410,
	0x3D44, 0x0C88,
	0x3D46, 0x5959,
	0x3D48, 0x8A5F,
	0x3D4A, 0xDA42,
	0x3D4C, 0x9361,
	0x3D4E, 0x8262,
	0x3D50, 0x8342,
	0x3D52, 0x8010,
	0x3D54, 0xC041,
	0x3D56, 0x64FF,
	0x3D58, 0xFFB7,
	0x3D5A, 0x4081,
	0x3D5C, 0x4080,
	0x3D5E, 0x4180,
	0x3D60, 0x4280,
	0x3D62, 0x438D,
	0x3D64, 0x44BA,
	0x3D66, 0x4488,
	0x3D68, 0x4380,
	0x3D6A, 0x4241,
	0x3D6C, 0x8140,
	0x3D6E, 0x8240,
	0x3D70, 0x8041,
	0x3D72, 0x8042,
	0x3D74, 0x8043,
	0x3D76, 0x8D44,
	0x3D78, 0xBA44,
	0x3D7A, 0x875E,
	0x3D7C, 0x4354,
	0x3D7E, 0x4241,
	0x3D80, 0x8140,
	0x3D82, 0x8120,
	0x3D84, 0x2881,
	0x3D86, 0x6026,
	0x3D88, 0x8055,
	0x3D8A, 0x8070,
	0x3D8C, 0x8040,
	0x3D8E, 0x4C81,
	0x3D90, 0x45C3,
	0x3D92, 0x4581,
	0x3D94, 0x4C40,
	0x3D96, 0x8070,
	0x3D98, 0x8040,
	0x3D9A, 0x4C85,
	0x3D9C, 0x6CA8,
	0x3D9E, 0x6C8C,
	0x3DA0, 0x000E,
	0x3DA2, 0xBE44,
	0x3DA4, 0x8844,
	0x3DA6, 0xBC78,
	0x3DA8, 0x0900,
	0x3DAA, 0x8904,
	0x3DAC, 0x8080,
	0x3DAE, 0x0240,
	0x3DB0, 0x8609,
	0x3DB2, 0x008E,
	0x3DB4, 0x0900,
	0x3DB6, 0x8002,
	0x3DB8, 0x4080,
	0x3DBA, 0x0480,
	0x3DBC, 0x887C,
	0x3DBE, 0xAA86,
	0x3DC0, 0x0900,
	0x3DC2, 0x877A,
	0x3DC4, 0x000E,
	0x3DC6, 0xC379,
	0x3DC8, 0x4C40,
	0x3DCA, 0xBF70,
	0x3DCC, 0x5E40,
	0x3DCE, 0x114E,
	0x3DD0, 0x5D41,
	0x3DD2, 0x5383,
	0x3DD4, 0x4200,
	0x3DD6, 0xC055,
	0x3DD8, 0xA400,
	0x3DDA, 0xC083,
	0x3DDC, 0x4288,
	0x3DDE, 0x6083,
	0x3DE0, 0x5B80,
	0x3DE2, 0x5A64,
	0x3DE4, 0x1030,
	0x3DE6, 0x801C,
	0x3DE8, 0x00A5,
	0x3DEA, 0x5697,
	0x3DEC, 0x57A5,
	0x3DEE, 0x5180,
	0x3DF0, 0x505A,
	0x3DF2, 0x814D,
	0x3DF4, 0x8358,
	0x3DF6, 0x8058,
	0x3DF8, 0xA943,
	0x3DFA, 0x8345,
	0x3DFC, 0xB045,
	0x3DFE, 0x8343,
	0x3E00, 0xA351,
	0x3E02, 0xE251,
	0x3E04, 0x8C59,
	0x3E06, 0x8059,
	0x3E08, 0x8A5F,
	0x3E0A, 0xEC7C,
	0x3E0C, 0xCC84,
	0x3E0E, 0x6182,
	0x3E10, 0x6283,
	0x3E12, 0x4283,
	0x3E14, 0x10CC,
	0x3E16, 0x6496,
	0x3E18, 0x4281,
	0x3E1A, 0x41BB,
	0x3E1C, 0x4082,
	0x3E1E, 0x407E,
	0x3E20, 0xCC41,
	0x3E22, 0x8042,
	0x3E24, 0x8043,
	0x3E26, 0x8300,
	0x3E28, 0xC088,
	0x3E2A, 0x44BA,
	0x3E2C, 0x4488,
	0x3E2E, 0x00C8,
	0x3E30, 0x8042,
	0x3E32, 0x4181,
	0x3E34, 0x4082,
	0x3E36, 0x4080,
	0x3E38, 0x4180,
	0x3E3A, 0x4280,
	0x3E3C, 0x4383,
	0x3E3E, 0x00C0,
	0x3E40, 0x8844,
	0x3E42, 0xBA44,
	0x3E44, 0x8800,
	0x3E46, 0xC880,
	0x3E48, 0x4241,
	0x3E4A, 0x8240,
	0x3E4C, 0x8140,
	0x3E4E, 0x8041,
	0x3E50, 0x8042,
	0x3E52, 0x8043,
	0x3E54, 0x8300,
	0x3E56, 0xC088,
	0x3E58, 0x44BA,
	0x3E5A, 0x4488,
	0x3E5C, 0x00C8,
	0x3E5E, 0x8042,
	0x3E60, 0x4181,
	0x3E62, 0x4082,
	0x3E64, 0x4080,
	0x3E66, 0x4180,
	0x3E68, 0x4280,
	0x3E6A, 0x4383,
	0x3E6C, 0x00C0,
	0x3E6E, 0x8844,
	0x3E70, 0xBA44,
	0x3E72, 0x8800,
	0x3E74, 0xC880,
	0x3E76, 0x4241,
	0x3E78, 0x8140,
	0x3E7A, 0x9F5E,
	0x3E7C, 0x8A54,
	0x3E7E, 0x8620,
	0x3E80, 0x2881,
	0x3E82, 0x6026,
	0x3E84, 0x8055,
	0x3E86, 0x8070,
	0x3E88, 0x0000,
	0x3E8A, 0x0000,
	0x3E8C, 0x0000,
	0x3E8E, 0x0000,
	0x3E90, 0x0000,
	0x3E92, 0x0000,
	0x3E94, 0x0000,
	0x3E96, 0x0000,
	0x3E98, 0x0000,
	0x3E9A, 0x0000,
	0x3E9C, 0x0000,
	0x3E9E, 0x0000,
	0x3EA0, 0x0000,
	0x3EA2, 0x0000,
	0x3EA4, 0x0000,
	0x3EA6, 0x0000,
	0x3EA8, 0x0000,
	0x3EAA, 0x0000,
	0x3EAC, 0x0000,
	0x3EAE, 0x0000,
	0x3EB0, 0x0000,
	0x3EB2, 0x0000,
	0x3EB4, 0x0000,

    //analog_setup_recommended
	0x3EB6, 0x004D,
	0x3EBC, 0xAA06,
	0x3EC0, 0x1E02,
	0x3EC2, 0x7700,
	0x3EC4, 0x1C08,
	0x3EC6, 0xEA44,
	0x3EC8, 0x0F0F,
	0x3ECA, 0x0F4A,
	0x3ECC, 0x0706,
	0x3ECE, 0x443B,
	0x3ED0, 0x12F0,
	0x3ED2, 0x0039,
	0x3ED4, 0x862F,
	0x3ED6, 0x4080,
	0x3ED8, 0x0523,
	0x3EDA, 0xF896,
	0x3EDC, 0x508C,
	0x3EDE, 0x5005,
	0x316A, 0x8200,
	0x316E, 0x8200,
	0x316C, 0x8200,
	0x3EF0, 0x414D,
	0x3EF2, 0x0101,
	0x3EF6, 0x0307,
	0x3EFA, 0x0F0F,
	0x3EFC, 0x0F0F,
	0x3EFE, 0x0F0F,

    //Defect_correction
	0x31E0, 0x0781,
	0x3F00, 0x004F,
	0x3F02, 0x0125,
	0x3F04, 0x20,
	0x3F06, 0x40,  
	0x3F08, 0x70,  
	0x3F0A, 0x0101,
	0x3F0C, 0x0302,
	0x3F1E, 0x22,  
	0x3F1A, 0x01FF,
	0x3F14, 0x0101,
	0x3F44, 0x0707,
	0x3F18, 0x011E,
	0x3F12, 0x0303,
	0x3F42, 0x1511,
	0x3F16, 0x011E,
	0x3F10, 0x0505,
	0x3F40, 0x1511,

	//PLL
	0x0300, 0x0005, 	// VT_PIX_CLK_DIV
	0x0302, 0x0001, 	// VT_SYS_CLK_DIV
	0x0304, 0x0101, 	// PRE_PLL_CLK_DIV
	0x0306, 0x1919, 	// PLL_MULTIPLIER
	0x0308, 0x000A, 	// OP_PIX_CLK_DIV
	0x030A, 0x0001, 	// OP_SYS_CLK_DIV
	0x0112, 0x0A0A, 	// CCP_DATA_FORMAT
	0x3016, 0x0101, 	// ROW_SPEED
	0x31B0, 0x003C, 	// FRAME_PREAMBLE
	0x31B2, 0x0022, 	// LINE_PREAMBLE
	0x31B4, 0x220A, 	// MIPI_TIMING_0
	0x31B6, 0x2206, 	// MIPI_TIMING_1
	0x31B8, 0x1412, 	// MIPI_TIMING_2
	0x31BA, 0x1041, 	// MIPI_TIMING_3
	0x31BC, 0x8386,	// MIPI_TIMING_4

};

// 1080p 30FPS
MMP_USHORT SNR_AR1335_Reg_1920x1080_30P_Customer[] = 
{
    //Working mode

#if 1 //OK
//    0x0340, 0x0CCE,	//VTS
//    0x0342, 0x1230,	//HTS
    0x0344, 200,		// X_ADDR_START
    0x0348, 4055,		// X_ADDR_END
    0x0346, 496,		// Y_ADDR_START
    0x034A, 2669,		// Y_ADDR_END
    0x034C, 1928, 		// X_OUTPUT_SIZE
    0x034E, 1088, 		// Y_OUTPUT_SIZE
    0x3040, 0xC043, 	// READ_MODE  verticial flip
    0x3172, 0x0206, 	// ANALOG_CONTROL2
    0x317A, 0x516E, 	// ANALOG_CONTROL6
    0x3F3C, 0x0003, 	// ANALOG_CONTROL9
    0x0400, 0x0001, 	// SCALING_MODE
    0x0404, 0x0020, 	// SCALE_M
    0x300C, 4656,
    0x300A, 1716,
    0x3012, 1716,		// COARSE_INTEGRATION_TIME
    0x306E, 0x9090,
    0x301A, 0x001C,	//Enable Streaming
#endif
};

// 5M 30FPS
MMP_USHORT SNR_AR1335_Reg_4000x3000_15P_Customer[] = 
{
#if 0 //5fps
    //Working mode
//	0x0340, 0x0CCE,		//VTS
//	0x0342, 0x2230,		//HTS
	0x0344,	116,
	0x0348,	4123,
	0x0346,	72,
	0x034A,	3079,
	0x3040,	0xC041,
	0x3172,	0x0206,
	0x317A,	0x416E,
	0x3F3C,	0x0003,
	0x0400,	0,
	0x0404,	16,
	0x034C,	4008,
	0x034E,	3008,
	0x300C,	4656,
	0x300A,	10308,
	0x3012,	5152,
	0x306E,	0x9080,
	0x301A,	0x001C,
#endif

#if 1 //10fps
    //Working mode
//	0x0340, 0x0CCE,		//VTS
//	0x0342, 0x2230,		//HTS
	0x0344,	116,
	0x0348,	4123,
	0x0346,	72,
	0x034A,	3079,
	0x3040,	0xC041,
	0x3172,	0x0206,
	0x317A,	0x416E,
	0x3F3C,	0x0003,
	0x0400,	0,
	0x0404,	16,
	0x034C,	4008,
	0x034E,	3008,
	0x300C,	4656,
	0x300A,	5152,
	0x3012,	5152,
	0x306E,	0x9080,
	0x301A,	0x021C,
#endif

#if 0 //15fps
    //Working mode
//	0x0340, 0x0CCE,		//VTS
//	0x0342, 0x2230,		//HTS
	0x0344,	16,
	0x0348,	4023,
	0x0346,	16,
	0x034A,	3023,
	0x3040,	0xC041,
	0x3172,	0x0206,
	0x317A,	0x416E,
	0x3F3C,	0x0003,
	0x0400,	0,
	0x0404,	16,
	0x034C,	4008,
	0x034E,	3008,
	0x300C,	4656,
	0x300A,	3132,
	0x3012,	3032,
	0x306E,	0x9080,
	0x301A,	0x001C,
#endif

};



//------------------------------------------------------------------------------
//  Function    : SNR_Cust_InitConfig
//  Description :
//------------------------------------------------------------------------------
static void SNR_Cust_InitConfig(void)
{
    int i;
    // Init OPR Table
    SensorCustFunc.OprTable->usInitSize =
        (sizeof(SNR_AR1335_Reg_Init_Customer)/sizeof(SNR_AR1335_Reg_Init_Customer[0]))/2;

    SensorCustFunc.OprTable->uspInitTable =
        &SNR_AR1335_Reg_Init_Customer[0];

    SensorCustFunc.OprTable->bBinTableExist                         = MMP_FALSE;
    SensorCustFunc.OprTable->bInitDoneTableExist                    = MMP_FALSE;


#if USE_13M
    //Mode0
	SensorCustFunc.OprTable->usSize[RES_IDX_4000x3000_15P] = 
        (sizeof(SNR_AR1335_Reg_4000x3000_15P_Customer)/sizeof(SNR_AR1335_Reg_4000x3000_15P_Customer[0]))/2;

    SensorCustFunc.OprTable->uspTable[RES_IDX_4000x3000_15P] =
        &SNR_AR1335_Reg_4000x3000_15P_Customer[0];
#else

    //Mode1
    SensorCustFunc.OprTable->usSize[RES_IDX_4000x3000_15P] =
        (sizeof(SNR_AR1335_Reg_1920x1080_30P_Customer)/sizeof(SNR_AR1335_Reg_1920x1080_30P_Customer[0]))/2;

    SensorCustFunc.OprTable->uspTable[RES_IDX_4000x3000_15P] =
        &SNR_AR1335_Reg_1920x1080_30P_Customer[0];
#endif

    // Init Vif Setting : Common
    SensorCustFunc.VifSetting->SnrType                              = MMPF_VIF_SNR_TYPE_BAYER;
#if (SENSOR_IF == SENSOR_IF_PARALLEL)
    SensorCustFunc.VifSetting->OutInterface                         = MMPF_VIF_IF_PARALLEL;
#elif (SENSOR_IF == SENSOR_IF_MIPI_1_LANE)
    SensorCustFunc.VifSetting->OutInterface                         = MMPF_VIF_IF_MIPI_SINGLE_0;
#elif (SENSOR_IF == SENSOR_IF_MIPI_2_LANE)
    SensorCustFunc.VifSetting->OutInterface                         = MMPF_VIF_IF_MIPI_DUAL_01;
#elif (SENSOR_IF == SENSOR_IF_MIPI_4_LANE)
    SensorCustFunc.VifSetting->OutInterface                         = MMPF_VIF_IF_MIPI_QUAD;
#endif
    SensorCustFunc.VifSetting->VifPadId							    = MMPF_VIF_MDL_ID0;

    // Init Vif Setting : PowerOn Setting
    SensorCustFunc.VifSetting->powerOnSetting.bTurnOnExtPower       = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOnSetting.usExtPowerPin         = SENSOR_GPIO_ENABLE; // it might be defined in Config_SDK.h
    SensorCustFunc.VifSetting->powerOnSetting.bExtPowerPinHigh	    = SENSOR_GPIO_ENABLE_ACT_LEVEL;
    SensorCustFunc.VifSetting->powerOnSetting.usExtPowerPinDelay    = 50;
    SensorCustFunc.VifSetting->powerOnSetting.bFirstEnPinHigh       = MMP_FALSE;
    SensorCustFunc.VifSetting->powerOnSetting.ubFirstEnPinDelay     = 1;
    SensorCustFunc.VifSetting->powerOnSetting.bNextEnPinHigh        = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOnSetting.ubNextEnPinDelay      = 10;
    SensorCustFunc.VifSetting->powerOnSetting.bTurnOnClockBeforeRst = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOnSetting.bFirstRstPinHigh      = MMP_FALSE;
    SensorCustFunc.VifSetting->powerOnSetting.ubFirstRstPinDelay    = 10;
    SensorCustFunc.VifSetting->powerOnSetting.bNextRstPinHigh       = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOnSetting.ubNextRstPinDelay     = 10;

    // Init Vif Setting : PowerOff Setting
    SensorCustFunc.VifSetting->powerOffSetting.bEnterStandByMode    = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOffSetting.usStandByModeReg     = 0x301A;
    SensorCustFunc.VifSetting->powerOffSetting.usStandByModeMask    = 0x04;
    SensorCustFunc.VifSetting->powerOffSetting.bEnPinHigh           = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOffSetting.ubEnPinDelay         = 20;
    SensorCustFunc.VifSetting->powerOffSetting.bTurnOffMClock       = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOffSetting.bTurnOffExtPower     = MMP_TRUE;
    SensorCustFunc.VifSetting->powerOffSetting.usExtPowerPin        = SENSOR_GPIO_ENABLE; // it might be defined in Config_SDK.h

    // Init Vif Setting : Sensor MClock Setting
    SensorCustFunc.VifSetting->clockAttr.bClkOutEn                  = MMP_TRUE; 

#if USE_13M
    SensorCustFunc.VifSetting->clockAttr.ubClkFreqDiv               = 2;
#else
    SensorCustFunc.VifSetting->clockAttr.ubClkFreqDiv               = 0;
#endif

    SensorCustFunc.VifSetting->clockAttr.ulMClkFreq                 = 24000;
    SensorCustFunc.VifSetting->clockAttr.ulDesiredFreq              = 24000;
    SensorCustFunc.VifSetting->clockAttr.ubClkPhase                 = MMPF_VIF_SNR_PHASE_DELAY_NONE;
    SensorCustFunc.VifSetting->clockAttr.ubClkPolarity              = MMPF_VIF_SNR_CLK_POLARITY_POS;
    SensorCustFunc.VifSetting->clockAttr.ubClkSrc					= MMPF_VIF_SNR_CLK_SRC_PMCLK; 

    // Init Vif Setting : Parallel Sensor Setting
    SensorCustFunc.VifSetting->paralAttr.ubLatchTiming              = MMPF_VIF_SNR_LATCH_POS_EDGE;
    SensorCustFunc.VifSetting->paralAttr.ubHsyncPolarity            = MMPF_VIF_SNR_CLK_POLARITY_POS;
    SensorCustFunc.VifSetting->paralAttr.ubVsyncPolarity            = MMPF_VIF_SNR_CLK_POLARITY_NEG;
    SensorCustFunc.VifSetting->paralAttr.ubBusBitMode               = MMPF_VIF_SNR_PARAL_BITMODE_16;
    
    // Init Vif Setting : MIPI Sensor Setting
    SensorCustFunc.VifSetting->mipiAttr.bClkDelayEn                 = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bClkLaneSwapEn              = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.usClkDelay                  = 0;
    SensorCustFunc.VifSetting->mipiAttr.ubBClkLatchTiming           = MMPF_VIF_SNR_LATCH_NEG_EDGE;
#if (SENSOR_IF == SENSOR_IF_MIPI_4_LANE)
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[0]              = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[1]              = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[2]              = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[3]              = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[0]             = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[1]             = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[2]             = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[3]             = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[0]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[1]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[2]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[3]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[0]            = MMPF_VIF_MIPI_DATA_SRC_PHY_0;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[1]            = MMPF_VIF_MIPI_DATA_SRC_PHY_1;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[2]            = MMPF_VIF_MIPI_DATA_SRC_PHY_2;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[3]            = MMPF_VIF_MIPI_DATA_SRC_PHY_3;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[0]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[1]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[2]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[3]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[0]             = 0x0F;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[1]             = 0x0F;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[2]             = 0x0F;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[3]             = 0x0F;
#elif (SENSOR_IF == SENSOR_IF_MIPI_2_LANE)
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[0]              = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[1]              = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[2]              = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneEn[3]              = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[0]             = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[1]             = MMP_TRUE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[2]             = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataDelayEn[3]             = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[0]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[1]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[2]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.bDataLaneSwapEn[3]          = MMP_FALSE;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[0]            = MMPF_VIF_MIPI_DATA_SRC_PHY_1;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[1]            = MMPF_VIF_MIPI_DATA_SRC_PHY_2;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[2]            = MMPF_VIF_MIPI_DATA_SRC_PHY_UNDEF;
    SensorCustFunc.VifSetting->mipiAttr.ubDataLaneSrc[3]            = MMPF_VIF_MIPI_DATA_SRC_PHY_UNDEF;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[0]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[1]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[2]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.usDataDelay[3]              = 0;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[0]             = 0x1F;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[1]             = 0x1F;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[2]             = 0x1F;
    SensorCustFunc.VifSetting->mipiAttr.ubDataSotCnt[3]             = 0x1F;
#endif

    // Init Vif Setting : Color ID Setting
    SensorCustFunc.VifSetting->colorId.VifColorId              	    = MMPF_VIF_COLORID_00;
	SensorCustFunc.VifSetting->colorId.CustomColorId.bUseCustomId   = MMP_TRUE;

    /* only one mode */
    for (i = 0; i < 1; i++) {
        SensorCustFunc.VifSetting->colorId.CustomColorId.Rot0d_Id[i]   = MMPF_VIF_COLORID_10;
        SensorCustFunc.VifSetting->colorId.CustomColorId.Rot90d_Id[i]  = MMPF_VIF_COLORID_UNDEF;
        SensorCustFunc.VifSetting->colorId.CustomColorId.Rot180d_Id[i] = MMPF_VIF_COLORID_10;
        SensorCustFunc.VifSetting->colorId.CustomColorId.Rot270d_Id[i] = MMPF_VIF_COLORID_UNDEF;
        SensorCustFunc.VifSetting->colorId.CustomColorId.H_Flip_Id[i]  = MMPF_VIF_COLORID_10;
        SensorCustFunc.VifSetting->colorId.CustomColorId.V_Flip_Id[i]  = MMPF_VIF_COLORID_10;
        SensorCustFunc.VifSetting->colorId.CustomColorId.HV_Flip_Id[i] = MMPF_VIF_COLORID_10;
    }
}

//------------------------------------------------------------------------------
//  Function    : SNR_Cust_DoAE_FrmSt
//  Description :
//------------------------------------------------------------------------------
MMP_USHORT gsFixIsoMode = 0;	//0: auto, 1: iso100, 2: iso200, 3: iso400, 4: iso800, 5: iso1600, 6:iso3200 , 7:iso6400

void SNR_Cust_DoAE_FrmSt(MMP_UBYTE ubSnrSel, MMP_ULONG ulFrameCnt)
{
#if (ISP_EN)
	static ISP_UINT16 ae_gain;
	static ISP_UINT16 ae_shutter;
	static ISP_UINT16 ae_vsync;
	ISP_UINT32 ae_energy;
	ISP_UINT32 i, j;
    MMP_USHORT  usRdVal;

    gsSensorFunction->MMPF_Sensor_GetReg(ubSnrSel, 0x3040, &usRdVal);
	
	if ((usRdVal & 0x2000) == 0)
		ISP_IF_AE_SetSysMode(0); 	
	else
		ISP_IF_AE_SetSysMode(1); 

    #if (ENABLE_CUSTOMIZED_AE == 1)
    if (ISP_IF_3A_GetSwitch( ISP_3A_ALGO_AE ) == 0)
    {
        return;
    }
    #endif
	
	if (ulFrameCnt % m_AeTime.ubPeriod == 0) {
		ISP_IF_AE_Execute();
		
		ae_gain    = ISP_IF_AE_GetGain();
		ae_shutter = ISP_IF_AE_GetShutter();
		ae_vsync   = ISP_IF_AE_GetVsync();
		
		//============= Fix ISO Test ======================
		if (gsFixIsoMode != 0) {
			j = 1;
			for (i=0; i<gsFixIsoMode-1; i++) {
				j *=2; 
			}

			ae_energy  = ae_gain * ae_shutter;
			ae_gain    = j * ISP_IF_AE_GetGainBase();
			ae_shutter = ae_energy / ae_gain;
			
			ISP_IF_AE_SetGain(ae_gain, ISP_IF_AE_GetGainBase());
			ISP_IF_AE_SetShutter(ae_shutter, ISP_IF_AE_GetShutterBase());
		}
	}
		
	if (ulFrameCnt % m_AeTime.ubPeriod == m_AeTime.ubFrmStSetShutFrmCnt)
		gsSensorFunction->MMPF_Sensor_SetShutter(ubSnrSel, ae_shutter, ae_vsync);
	
    if (ulFrameCnt % m_AeTime.ubPeriod == m_AeTime.ubFrmStSetGainFrmCnt)
    	gsSensorFunction->MMPF_Sensor_SetGain(ubSnrSel, ae_gain);

#endif
}

//------------------------------------------------------------------------------
//  Function    : SNR_Cust_DoAE_FrmEnd
//  Description :
//------------------------------------------------------------------------------
void SNR_Cust_DoAE_FrmEnd(MMP_UBYTE ubSnrSel, MMP_ULONG ulFrameCnt)
{
	// TBD
}

//------------------------------------------------------------------------------
//  Function    : SNR_Cust_DoAWB
//  Description :
//------------------------------------------------------------------------------
void SNR_Cust_DoAWB(MMP_UBYTE ubSnrSel, MMP_ULONG ulFrameCnt)
{
	// TBD
}

//------------------------------------------------------------------------------
//  Function    : SNR_Cust_DoIQ
//  Description :
//------------------------------------------------------------------------------
void SNR_Cust_DoIQ(MMP_UBYTE ubSnrSel, MMP_ULONG ulFrameCnt)
{
	// TBD
}

//------------------------------------------------------------------------------
//  Function    : SNR_Cust_SetGain
//  Description :
//------------------------------------------------------------------------------
void SNR_Cust_SetGain(MMP_UBYTE ubSnrSel, MMP_ULONG ulGain)
{
#if (ISP_EN)
	
	ISP_UINT16 sensor_again_fine;
	ISP_UINT16 sensor_again_fine_db;
	ISP_UINT16 sensor_again_coarse;
	ISP_UINT16 sensor_again_coarse_db;
	ISP_UINT16 sensor_dgain;
	ISP_UINT16 ae_gain = ulGain;
	MMP_USHORT  usRdVal;
	
	static ISP_UINT16 sensor_gain_type     = 0;
	static ISP_UINT16 sensor_gain_type_pre = 255;
	static ISP_UINT16 update_sensor_gain   = 1;

    gsSensorFunction->MMPF_Sensor_GetReg(ubSnrSel, 0x3040, &usRdVal);
	
	// original size scale down
	if((usRdVal & 0x2000) == 0)
	{
		ISP_IF_AE_SetAdditionMode(0);
	
		if (ae_gain < 8 * ISP_IF_AE_GetGainBase())
			sensor_gain_type = 0;
		else if (ae_gain < 16 * ISP_IF_AE_GetGainBase())
			sensor_gain_type = 1;
		else
			sensor_gain_type = 2;
		
		if (sensor_gain_type_pre != sensor_gain_type)
			update_sensor_gain = 1;
		
		if (update_sensor_gain == 1)
		{	
			switch (sensor_gain_type) {
			case 0:
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED2, 0x449D);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EDC, 0x01C9);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EE0, 0x1558);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EC8, 0x0074);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED8, 0x60A0);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ECC, 0x7386);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F1A, 0x0F04);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F44, 0x0C0C);
				update_sensor_gain = 0;
				break;
			case 1:
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED2, 0x449D);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EDC, 0x01C9);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EE0, 0x1558);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EC8, 0x0074);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED8, 0x60A0);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ECC, 0x7586);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F1A, 0x1E1E);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F44, 0x0708);
				update_sensor_gain = 0;
				break;
			case 2:
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED2, 0x449D);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EDC, 0x01C9);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EE0, 0x1558);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EC8, 0x0074);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED8, 0x60A0);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ECC, 0x7586);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F1A, 0x1919);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F44, 0x0708);
				update_sensor_gain = 0;
				break;			
			}
		}	
		
		sensor_gain_type_pre = sensor_gain_type;
		
		// Sensor Gain Mapping Real Size
		if(ae_gain < 8 * ISP_IF_AE_GetGainBase()) {
		
			if(ae_gain < 2 * ISP_IF_AE_GetGainBase()) { 		// 1x ~ 2x
				sensor_again_coarse = 1;
				sensor_again_coarse_db = 1 * ISP_IF_AE_GetGainBase();
			}
			else if (ae_gain < 3 * ISP_IF_AE_GetGainBase()) {	// 2x ~ 3x
				sensor_again_coarse = 2;
				sensor_again_coarse_db = 2 * ISP_IF_AE_GetGainBase();
			}
			else if (ae_gain < 4 * ISP_IF_AE_GetGainBase()) {	// 3x ~ 4x
				sensor_again_coarse = 6;
				sensor_again_coarse_db = 3 * ISP_IF_AE_GetGainBase();
			}
			else {												// 4x ~ 8x
				sensor_again_coarse = 3;
				sensor_again_coarse_db = 4 * ISP_IF_AE_GetGainBase();
			}
			
			ae_gain = ae_gain * ISP_IF_AE_GetGainBase() / sensor_again_coarse_db;
			
			sensor_again_fine = 32 - (32 * ISP_IF_AE_GetGainBase() / ae_gain) ;
			sensor_again_fine = (sensor_again_fine == 0) ? (0) : (sensor_again_fine-1);
			sensor_again_fine_db = (32 * ISP_IF_AE_GetGainBase()) / (32 - sensor_again_fine) ;
			
			sensor_dgain = ae_gain * 64 / sensor_again_fine_db ;
			sensor_dgain = ISP_MIN(ISP_MAX(sensor_dgain, 0x40), 0x1ff);
		}
		else {													// 8x ~ 64x(again 8x, dgain 8x)
			// if crose = 8x, fine gain need to 1x, and use dgain.
			sensor_again_coarse = 4;
			sensor_again_coarse_db = 8 * ISP_IF_AE_GetGainBase();
			
			sensor_again_fine = 0;
			sensor_again_fine_db = 1 * ISP_IF_AE_GetGainBase();
			
			sensor_dgain = ae_gain * 64 * ISP_IF_AE_GetGainBase() / sensor_again_coarse_db / sensor_again_fine_db ;  
			sensor_dgain = ISP_MIN(ISP_MAX(sensor_dgain, 0x40), 0x1ff);
		}
	}
	else
	{		
		ISP_IF_AE_SetAdditionMode(1);
		
		if (ae_gain < 2 * ISP_IF_AE_GetGainBase())
			sensor_gain_type = 0;
		else if (ae_gain < 8 * ISP_IF_AE_GetGainBase())
			sensor_gain_type = 1;
		else if (ae_gain < 16 * ISP_IF_AE_GetGainBase())
			sensor_gain_type = 2;
		else
			sensor_gain_type = 3;
		
		if (sensor_gain_type_pre != sensor_gain_type)
			update_sensor_gain = 1;
		
		// set sensor opr
		if (update_sensor_gain == 1) {
			
			switch (sensor_gain_type) {
			case 0:
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED2, 0xE49D);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EDC, 0x01C9);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EE0, 0x9518);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EC8, 0x00A4);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED8, 0x60B0);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ECC, 0x7386);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F1A, 0x0404);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F44, 0x0101);
				update_sensor_gain = 0;
				break;
			case 1:
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED2, 0x449D);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EDC, 0x01C9);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EE0, 0x1558);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EC8, 0x0074);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED8, 0x60A0);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ECC, 0x7786);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F1A, 0x0404);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F44, 0x0101);
				update_sensor_gain = 0;
				break;
			case 2:
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED2, 0x449D);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EDC, 0x01C8);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EE0, 0x1558);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EC8, 0x0074);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED8, 0x60A0);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ECC, 0x7786);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F1A, 0x0504);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F44, 0x0101);
				update_sensor_gain = 0;
				break;
			case 3:
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED2, 0x449D);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EDC, 0x01C8);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EE0, 0x1558);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3EC8, 0x0074);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ED8, 0x60A0);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3ECC, 0x7786);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F1A, 0x0609);
				gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3F44, 0x0101);
				update_sensor_gain = 0;
				break;			
			}
		}	
		
		sensor_gain_type_pre = sensor_gain_type;
		
		// calu sensor gain
		if (ulGain < 2 * ISP_IF_AE_GetGainBase()) {				// 1x ~ 2x
			
			sensor_again_coarse = 1;
			sensor_again_coarse_db = 0.705 * ISP_IF_AE_GetGainBase();
					
			ae_gain = ae_gain * ISP_IF_AE_GetGainBase() / sensor_again_coarse_db;
			
			sensor_again_fine = 0;
			sensor_again_fine_db = (32 * ISP_IF_AE_GetGainBase()) / (32 - sensor_again_fine) ;
			
			sensor_dgain = ae_gain * 64 / sensor_again_fine_db ;  
			sensor_dgain = ISP_MIN(ISP_MAX(sensor_dgain, 0x5B), 0x1ff);
		}
		else if(ae_gain < 8 * ISP_IF_AE_GetGainBase()) {
		
			if (ae_gain < 4 * ISP_IF_AE_GetGainBase()) {			// 2x ~ 4x
				sensor_again_coarse = 2;
				sensor_again_coarse_db = 2 * ISP_IF_AE_GetGainBase();
			}
			else if (ae_gain < 8 * ISP_IF_AE_GetGainBase()) {	// 4x ~ 8x
				sensor_again_coarse = 3;
				sensor_again_coarse_db = 4 * ISP_IF_AE_GetGainBase();
			}		
			
			ae_gain = ae_gain * ISP_IF_AE_GetGainBase() / sensor_again_coarse_db;
			
			sensor_again_fine = 32- (32 * ISP_IF_AE_GetGainBase() / ae_gain);
			sensor_again_fine = (sensor_again_fine == 0) ? (0) : (sensor_again_fine-1);
			sensor_again_fine_db = (32 * ISP_IF_AE_GetGainBase()) / (32 - sensor_again_fine) ;
			
			sensor_dgain = ae_gain * 64 / sensor_again_fine_db;
			sensor_dgain = ISP_MIN(ISP_MAX(sensor_dgain, 0x40), 0x1ff);
		}
		else {													// 8 ~ 64x(again 8x, dgain 8x)
			// if crose = 8x, fine gain need to 1x, and use dgain.
			sensor_again_coarse = 4;
			sensor_again_coarse_db = 8 * ISP_IF_AE_GetGainBase();
			
			sensor_again_fine = 0;
			sensor_again_fine_db = 1 * ISP_IF_AE_GetGainBase();
			
			sensor_dgain = ae_gain * 64 * ISP_IF_AE_GetGainBase() / sensor_again_coarse_db / sensor_again_fine_db ;  
			sensor_dgain = ISP_MIN(ISP_MAX(sensor_dgain, 0x40), 0x1ff);
		}
	}

	sensor_again_coarse = sensor_again_coarse | (sensor_again_fine << 3) | (sensor_dgain << 7) ;
	
	gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x305E, sensor_again_coarse);
	
#endif
}

//------------------------------------------------------------------------------
//  Function    : SNR_Cust_SetShutter
//  Description :
//------------------------------------------------------------------------------
void SNR_Cust_SetShutter(MMP_UBYTE ubSnrSel, MMP_ULONG shutter, MMP_ULONG vsync)
{
#if (ISP_EN)
	ISP_UINT32 new_vsync    = gSnrLineCntPerSec[ubSnrSel] * vsync / ISP_IF_AE_GetVsyncBase();
	ISP_UINT32 new_shutter  = gSnrLineCntPerSec[ubSnrSel] * shutter / ISP_IF_AE_GetShutterBase();
    
	new_vsync   = ISP_MIN(ISP_MAX(new_shutter + 3, new_vsync), 0xFFFF);
	new_shutter = ISP_MIN(ISP_MAX(new_shutter, 1), new_vsync - 3);

	// this sensor don't need to config sensor vsync.
	//gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x300A, new_vsync);
	
	gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3012, new_shutter);	
#endif	
}

//------------------------------------------------------------------------------
//  Function    : SNR_Cust_SetFlip
//  Description :
//------------------------------------------------------------------------------
void SNR_Cust_SetFlip(MMP_UBYTE ubSnrSel, MMP_UBYTE ubMode)
{
    MMP_USHORT  usRdVal;
    
	if (ubMode == MMPF_SENSOR_NO_FLIP) {
	    gsSensorFunction->MMPF_Sensor_GetReg(ubSnrSel, 0x3040, &usRdVal);
		gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3040, usRdVal|0xC000);
	}	
	else if (ubMode == MMPF_SENSOR_COLROW_FLIP) {
	    gsSensorFunction->MMPF_Sensor_GetReg(ubSnrSel, 0x3040, &usRdVal);
		gsSensorFunction->MMPF_Sensor_SetReg(ubSnrSel, 0x3040, usRdVal&0x3FFF);
	}
}




void SNR_Cust_SetRotate(MMP_UBYTE ubSnrSel, MMP_UBYTE ubMode)
{
}

void SNR_Cust_CheckVersion(MMP_UBYTE ubSnrSel, MMP_ULONG *pulVersion)
{
}

void SNR_Cust_Switch3ASpeed(MMP_BOOL slow)
{
}

void SNR_Cust_SetNightVision(MMP_BOOL night)
{
}

void SNR_Cust_SetTest(MMP_UBYTE effect_mode)
{
//    ISP_IF_F_SetImageEffect(effect_mode);
}

MMPF_SENSOR_CUSTOMER SensorCustFunc = 
{
    SNR_Cust_InitConfig,
    SNR_Cust_DoAE_FrmSt,
    SNR_Cust_DoAE_FrmEnd,
    SNR_Cust_DoAWB,
    SNR_Cust_DoIQ,
    SNR_Cust_SetGain,
    SNR_Cust_SetShutter,
    SNR_Cust_SetFlip,
    SNR_Cust_SetRotate,
    SNR_Cust_CheckVersion,

    SNR_Cust_Switch3ASpeed,
    SNR_Cust_SetNightVision,
    SNR_Cust_SetTest,

    &m_SensorRes,
    &m_OprTable,
    &m_VifSetting,
    &m_I2cmAttr,
    &m_AwbTime,
    &m_AeTime,
    &m_AfTime,
    MMP_SNR_PRIO_PRM
};

int SNR_Module_Init(void)
{
    if (SensorCustFunc.sPriority == MMP_SNR_PRIO_PRM)
        MMPF_SensorDrv_Register(PRM_SENSOR, &SensorCustFunc);
    else
        MMPF_SensorDrv_Register(SCD_SENSOR, &SensorCustFunc); 
            
    return 0;
}

/* #pragma arm section code = "initcall", rodata = "initcall", rwdata = "initcall", zidata = "initcall" */
/* #pragma O0 */
ait_module_init(SNR_Module_Init);
/* #pragma */
/* #pragma arm section rodata, rwdata, zidata */

#endif // (BIND_SENSOR_AR1335)
#endif // (SENSOR_EN)
