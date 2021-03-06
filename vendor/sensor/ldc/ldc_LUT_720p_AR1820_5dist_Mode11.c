#include "mmpf_typedef.h"
#include "mmpf_ldc.h"

MMP_USHORT m_usPositionX_HD[LDC_X_POS_ARRAY_SIZE] = 
{
	0x0000, 
	0x001f, 
	0x003e, 
	0x005e, 
	0x007d, 
	0x009c, 
	0x00bb, 
	0x00db, 
	0x00fa, 
	0x0119, 
	0x0138, 
	0x0157, 
	0x0177, 
	0x0196, 
	0x01b5, 
	0x01d4, 
	0x01f4, 
	0x0213, 
	0x0232, 
	0x0251, 
	0x0270, 
	0x0290, 
	0x02af, 
	0x02ce, 
	0x02ed, 
	0x030c, 
	0x032c, 
	0x034b, 
	0x036a, 
	0x0389, 
	0x03a9, 
	0x03c8, 
	0x03e7, 
	0x0406, 
	0x0425, 
	0x0445, 
	0x0464, 
	0x0483, 
	0x04a2, 
	0x04c2, 
	0x04e1, 
	0x0500, 
};

MMP_USHORT m_usPositionY_HD[LDC_Y_POS_ARRAY_SIZE] = 
{
	0x0000, 
	0x0017, 
	0x002e, 
	0x0046, 
	0x005d, 
	0x0074, 
	0x008b, 
	0x00a3, 
	0x00ba, 
	0x00d1, 
	0x00e8, 
	0x00ff, 
	0x0117, 
	0x012e, 
	0x0145, 
	0x015c, 
	0x0174, 
	0x018b, 
	0x01a2, 
	0x01b9, 
	0x01d1, 
	0x01e8, 
	0x01ff, 
	0x0216, 
	0x022d, 
	0x0245, 
	0x025c, 
	0x0273, 
	0x028a, 
	0x02a2, 
	0x02b9, 
	0x02d0, 
};

MMP_ULONG m_ulDeltaMemA_000_127_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0x013d02de,
	0x0070027d,
	0xffc8021b,
	0xff4a01bc,
	0xfef50160,
	0xfeca010b,
	0xfec600bf,
	0xfee8007e,
	0xff29004c,
	0xff80002b,
	0xffe5001c,
	0x004e0021,
	0x00ae0039,
	0x00fc0064,
	0x012d009d,
	0x013d00e4,
	0x01260135,
	0x00e7018d,
	0x007c01eb,
	0xffea024b,
	0xff2e02ae,
	0x00ff0265,
	0x0032020d,
	0xff8a01b4,
	0xff0f015e,
	0xfebc010a,
	0xfe9600bd,
	0xfe990076,
	0xfec3003b,
	0xff0e000c,
	0xff71ffed,
	0xffe2ffe0,
	0x0058ffe4,
	0x00c3fffa,
	0x011c0022,
	0x01570057,
	0x016e0099,
	0x015c00e3,
	0x01210133,
	0x00b90189,
	0x002801e0,
	0xff6c0239,
	0x00c601f4,
	0xfffa01a7,
	0xff520159,
	0xfed8010d,
	0xfe8800c2,
	0xfe66007d,
	0xfe6f003e,
	0xfea00009,
	0xfef5ffdf,
	0xff62ffc3,
	0xffdfffb7,
	0x0061ffbb,
	0x00d7ffcf,
	0x013afff3,
	0x017d0022,
	0x019b005d,
	0x018e009f,
	0x015600e7,
	0x00f00133,
	0x0061017f,
	0xffa501ce,
	0x0097018f,
	0xffca014e,
	0xff23010b,
	0xfeaa00ca,
	0xfe5c008a,
	0xfe3d004f,
	0xfe4b0018,
	0xfe82ffea,
	0xfedfffc6,
	0xff55ffae,
	0xffdcffa3,
	0x0068ffa6,
	0x00e9ffb8,
	0x0154ffd7,
	0x019e0000,
	0x01c20033,
	0x01b9006c,
	0x018400a9,
	0x011f00ea,
	0x0090012c,
	0xffd4016f,
	0x006f0131,
	0xffa100fc,
	0xfefa00c6,
	0xfe820091,
	0xfe36005d,
	0xfe1a002d,
	0xfe2c0001,
	0xfe68ffdb,
	0xfeccffbd,
	0xff4bffa9,
	0xffdaffa0,
	0x006fffa3,
	0x00f8ffb2,
	0x016bffcb,
	0x01bbffed,
	0x01e30017,
	0x01de0045,
	0x01ab0077,
	0x014700ac,
	0x00b900e0,
	0xfffd0116,
	0x005000db,
	0xff8200b3,
	0xfedb008b,
	0xfe630063,
	0xfe19003c,
	0xfdfe0018,
	0xfe14fff6,
	0xfe54ffd9,
	0xfebdffc2,
	0xff42ffb3,
	0xffd8ffad,
	0x0074ffaf,
	0x0103ffba,
	0x017cffcd,
	0x01d1ffe7,
	0x01fd0007,
	0x01fa002a,
	0x01c9004f,
	0x01660077,
	0x00d8009f,
	0x001c00c7,
	0x003a0088,
	0xff6c006f,
};

MMP_ULONG m_ulDeltaMemA_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfec50055,
	0xfe4d003b,
	0xfe040022,
	0xfdeb000b,
	0xfe02fff5,
	0xfe46ffe2,
	0xfeb3ffd3,
	0xff3cffca,
	0xffd7ffc5,
	0x0078ffc7,
	0x010cffce,
	0x0189ffda,
	0x01e1ffeb,
	0x02100000,
	0x020f0016,
	0x01de002e,
	0x017c0048,
	0x00ee0061,
	0x0032007b,
	0x002e003a,
	0xff60002f,
	0xfeb90024,
	0xfe410019,
	0xfdf8000e,
	0xfde00004,
	0xfdf8fffa,
	0xfe3efff2,
	0xfeadffeb,
	0xff38ffe7,
	0xffd6ffe5,
	0x007affe6,
	0x0111ffe9,
	0x0190ffee,
	0x01eafff6,
	0x021affff,
	0x021a0009,
	0x01ea0013,
	0x0189001e,
	0x00fb0029,
	0x003e0035,
	0x002cffec,
	0xff5dfff0,
	0xfeb6fff4,
	0xfe3ffff8,
	0xfdf6fffb,
	0xfddeffff,
	0xfdf60002,
	0xfe3c0005,
	0xfeab0007,
	0xff380009,
	0xffd60009,
	0x007b0009,
	0x01120008,
	0x01920006,
	0x01ec0004,
	0x021c0001,
	0x021cfffd,
	0x01edfffa,
	0x018bfff6,
	0x00fdfff2,
	0x0041ffee,
	0x0033ff9f,
	0xff65ffb2,
	0xfebeffc4,
	0xfe46ffd6,
	0xfdfdffe9,
	0xfde4fff9,
	0xfdfc0009,
	0xfe410016,
	0xfeaf0021,
	0xff3a0028,
	0xffd6002b,
	0x0079002a,
	0x010f0025,
	0x018d001c,
	0x01e70010,
	0x02160001,
	0x0216fff1,
	0x01e5ffe0,
	0x0184ffcd,
	0x00f6ffbb,
	0x0039ffa8,
	0x0044ff4e,
	0xff76ff6f,
	0xfecfff90,
	0xfe57ffb1,
	0xfe0dffd1,
	0xfdf4fff0,
	0xfe0a000c,
	0xfe4c0023,
	0xfeb70036,
	0xff3f0043,
	0xffd70049,
	0x00760047,
	0x0108003d,
	0x0183002d,
	0x01da0018,
	0x0207fffe,
	0x0205ffe1,
	0x01d4ffc2,
	0x0172ffa1,
	0x00e4ff80,
	0x0028ff5f,
	0x005efefb,
	0xff91ff29,
	0xfeeaff59,
	0xfe72ff87,
	0xfe26ffb4,
	0xfe0bffdf,
	0xfe1f0006,
	0xfe5e0027,
	0xfec40042,
	0xff460053,
	0xffd9005b,
	0x00720059,
	0x00fe004c,
	0x01740035,
	0x01c70017,
	0x01f1fff3,
	0x01edffca,
	0x01bbff9e,
	0x0158ff70,
	0x00caff41,
	0x000eff12,
	0x0081fea2,
	0xffb4fedd,
	0xff0dff19,
	0xfe94ff54,
};

MMP_ULONG m_ulDeltaMemA_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfe48ff8e,
	0xfe2affc4,
	0xfe3afff6,
	0xfe74001f,
	0xfed50041,
	0xff500057,
	0xffdb0061,
	0x006c005d,
	0x00f1004d,
	0x01600031,
	0x01ae000b,
	0x01d4ffdd,
	0x01cdffaa,
	0x0199ff72,
	0x0135ff37,
	0x00a6fefc,
	0xffeafebf,
	0x00aefe3f,
	0xffe1fe87,
	0xff3afecf,
	0xfec0ff16,
	0xfe71ff5b,
	0xfe51ff9c,
	0xfe5cffd7,
	0xfe910008,
	0xfee90030,
	0xff5c004a,
	0xffdd0055,
	0x00650052,
	0x00e0003f,
	0x0148001d,
	0x018efff1,
	0x01afffba,
	0x01a4ff7c,
	0x016eff3a,
	0x0109fef3,
	0x0079feac,
	0xffbefe63,
	0x00e1fdd6,
	0x0014fe28,
	0xff6dfe7c,
	0xfef2fecd,
	0xfea1ff1c,
	0xfe7dff66,
	0xfe83ffa9,
	0xfeb1ffe1,
	0xff01000e,
	0xff69002b,
	0xffe00038,
	0x005d0033,
	0x00ce001e,
	0x012cfff9,
	0x016bffc6,
	0x0185ff88,
	0x0176ff42,
	0x013dfef6,
	0x00d6fea5,
	0x0046fe53,
	0xff8afdff,
	0x011dfd5f,
	0x0050fdbc,
	0xffa8fe1a,
	0xff2cfe75,
	0xfed8fecd,
	0xfeafff1e,
	0xfeafff68,
	0xfed5ffa6,
	0xff1bffd7,
	0xff78fff7,
	0xffe30005,
	0x00530000,
	0x00b9ffe9,
	0x010cffc0,
	0x0142ff89,
	0x0156ff44,
	0x0142fef6,
	0x0104fea2,
	0x009bfe48,
	0x000afdec,
	0xff4efd8e,
};

MMP_ULONG m_ulDeltaMemB_000_127_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0x00d202ae,
	0x0016024b,
	0xff8401eb,
	0xff19018d,
	0xfeda0135,
	0xfec300e4,
	0xfed3009d,
	0xff040064,
	0xff520039,
	0xffb20021,
	0x001b001c,
	0x0080002b,
	0x00d7004c,
	0x0118007e,
	0x013a00bf,
	0x0136010b,
	0x010b0160,
	0x00b601bc,
	0x0038021b,
	0xff90027d,
	0xfec702dd,
	0x00940239,
	0xffd801e0,
	0xff470189,
	0xfedf0133,
	0xfea400e3,
	0xfe920099,
	0xfea90057,
	0xfee40022,
	0xff3dfffa,
	0xffa8ffe4,
	0x001effe0,
	0x008fffed,
	0x00f2000c,
	0x013d003b,
	0x01670076,
	0x016a00bd,
	0x0144010a,
	0x00f1015e,
	0x007601b4,
	0xffce020d,
	0xff050264,
	0x005b01ce,
	0xff9f017f,
	0xff100133,
	0xfeaa00e7,
	0xfe72009f,
	0xfe65005d,
	0xfe830022,
	0xfec6fff3,
	0xff29ffcf,
	0xff9fffbb,
	0x0021ffb7,
	0x009effc3,
	0x010bffdf,
	0x01600009,
	0x0191003e,
	0x019a007d,
	0x017800c2,
	0x0128010d,
	0x00ae0159,
	0x000601a7,
	0xff3d01f3,
	0x002c016f,
	0xff70012c,
	0xfee100ea,
	0xfe7c00a9,
	0xfe47006c,
	0xfe3e0033,
	0xfe620000,
	0xfeacffd7,
	0xff17ffb8,
	0xff98ffa6,
	0x0024ffa3,
	0x00abffae,
	0x0121ffc6,
	0x017effea,
	0x01b50018,
	0x01c3004f,
	0x01a4008a,
	0x015600ca,
	0x00dd010b,
	0x0036014e,
	0xff6d018e,
	0x00030116,
	0xff4700e0,
	0xfeb900ac,
	0xfe550077,
	0xfe220045,
	0xfe1d0017,
	0xfe45ffed,
	0xfe95ffcb,
	0xff08ffb2,
	0xff91ffa3,
	0x0026ffa0,
	0x00b5ffa9,
	0x0134ffbd,
	0x0198ffdb,
	0x01d40001,
	0x01e6002d,
	0x01ca005d,
	0x017e0091,
	0x010600c6,
	0x005f00fc,
	0xff950130,
	0xffe400c7,
	0xff28009f,
	0xfe9a0077,
	0xfe37004f,
	0xfe06002a,
	0xfe030007,
	0xfe2fffe7,
	0xfe84ffcd,
	0xfefdffba,
	0xff8cffaf,
	0x0028ffad,
	0x00beffb3,
	0x0143ffc2,
	0x01acffd9,
	0x01ecfff6,
	0x02020018,
	0x01e7003c,
	0x019d0063,
	0x0125008b,
	0x007e00b3,
	0xffb400da,
	0xffce007b,
	0xff120061,
};

MMP_ULONG m_ulDeltaMemB_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfe840048,
	0xfe22002e,
	0xfdf10016,
	0xfdf00000,
	0xfe1fffeb,
	0xfe77ffda,
	0xfef4ffce,
	0xff88ffc7,
	0x0029ffc5,
	0x00c4ffca,
	0x014dffd3,
	0x01baffe2,
	0x01fefff5,
	0x0215000b,
	0x01fc0022,
	0x01b3003b,
	0x013b0055,
	0x0094006f,
	0xffca0087,
	0xffc20035,
	0xff050029,
	0xfe77001e,
	0xfe160013,
	0xfde60009,
	0xfde6ffff,
	0xfe16fff6,
	0xfe70ffee,
	0xfeefffe9,
	0xff86ffe6,
	0x002affe5,
	0x00c8ffe7,
	0x0153ffeb,
	0x01c2fff2,
	0x0208fffa,
	0x02200004,
	0x0208000e,
	0x01bf0019,
	0x01470024,
	0x00a0002f,
	0xffd6003a,
	0xffbfffee,
	0xff03fff2,
	0xfe75fff6,
	0xfe13fffa,
	0xfde4fffd,
	0xfde40001,
	0xfe140004,
	0xfe6e0006,
	0xfeee0008,
	0xff850009,
	0x002a0009,
	0x00c80009,
	0x01550007,
	0x01c40005,
	0x020a0002,
	0x0222ffff,
	0x020afffb,
	0x01c1fff8,
	0x014afff4,
	0x00a3fff0,
	0xffd8ffec,
	0xffc7ffa8,
	0xff0affbb,
	0xfe7cffcd,
	0xfe1bffe0,
	0xfdeafff1,
	0xfdea0001,
	0xfe190010,
	0xfe73001c,
	0xfef10025,
	0xff87002a,
	0x002a002b,
	0x00c60028,
	0x01510021,
	0x01bf0016,
	0x02040009,
	0x021cfff9,
	0x0203ffe9,
	0x01baffd6,
	0x0142ffc4,
	0x009bffb2,
	0xffd1ffa0,
	0xffd8ff5f,
	0xff1cff80,
	0xfe8effa1,
	0xfe2cffc2,
	0xfdfbffe1,
	0xfdf9fffe,
	0xfe260018,
	0xfe7d002d,
	0xfef8003d,
	0xff8a0047,
	0x00290049,
	0x00c10043,
	0x01490036,
	0x01b40023,
	0x01f6000c,
	0x020cfff0,
	0x01f3ffd1,
	0x01a9ffb1,
	0x0131ff90,
	0x008aff6f,
	0xffc0ff4f,
	0xfff2ff12,
	0xff36ff41,
	0xfea8ff70,
	0xfe45ff9e,
	0xfe13ffca,
	0xfe0ffff3,
	0xfe390017,
	0xfe8c0035,
	0xff02004c,
	0xff8e0059,
	0x0027005b,
	0x00ba0053,
	0x013c0042,
	0x01a20027,
	0x01e10006,
	0x01f5ffdf,
	0x01daffb4,
	0x018eff87,
	0x0116ff59,
	0x006fff29,
	0xffa5fefc,
	0x0016febf,
	0xff5afefc,
	0xfecbff37,
	0xfe67ff72,
};

MMP_ULONG m_ulDeltaMemB_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfe33ffaa,
	0xfe2cffdd,
	0xfe52000b,
	0xfea00031,
	0xff0f004d,
	0xff94005d,
	0x00250061,
	0x00b00057,
	0x012b0041,
	0x018c001f,
	0x01c6fff6,
	0x01d6ffc4,
	0x01b8ff8e,
	0x016cff54,
	0x00f3ff19,
	0x004cfedd,
	0xff82fea3,
	0x0042fe63,
	0xff87feac,
	0xfef7fef3,
	0xfe92ff3a,
	0xfe5cff7c,
	0xfe51ffba,
	0xfe72fff1,
	0xfeb8001d,
	0xff20003f,
	0xff9b0052,
	0x00230055,
	0x00a4004a,
	0x01170030,
	0x016f0008,
	0x01a4ffd7,
	0x01afff9c,
	0x018fff5b,
	0x0140ff16,
	0x00c6fecf,
	0x001ffe87,
	0xff56fe40,
	0x0076fdff,
	0xffbafe53,
	0xff2afea5,
	0xfec3fef6,
	0xfe8aff42,
	0xfe7bff88,
	0xfe95ffc6,
	0xfed4fff9,
	0xff32001e,
	0xffa30033,
	0x00200038,
	0x0097002b,
	0x00ff000e,
	0x014fffe1,
	0x017dffa9,
	0x0183ff66,
	0x015fff1c,
	0x010efecd,
	0x0093fe7c,
	0xffecfe28,
	0xff23fdd7,
	0x00b2fd8e,
	0xfff6fdec,
	0xff65fe48,
	0xfefcfea2,
	0xfebefef6,
	0xfeaaff44,
	0xfebeff89,
	0xfef4ffc0,
	0xff47ffe9,
	0xffad0000,
	0x001d0005,
	0x0088fff7,
	0x00e5ffd7,
	0x012bffa6,
	0x0151ff68,
	0x0151ff1e,
	0x0128fecd,
	0x00d4fe75,
	0x0058fe1a,
	0xffb0fdbc,
	0xfee7fd61,
};

MMP_ULONG m_ulDeltaMemC_000_127_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0x011d02a1,
	0x00500244,
	0xffa801e6,
	0xff2c018b,
	0xfed80133,
	0xfeaf00e2,
	0xfeaf0098,
	0xfed5005a,
	0xff1b0029,
	0xff780009,
	0xffe3fffb,
	0x00530000,
	0x00b90017,
	0x010c0040,
	0x01420077,
	0x015600bc,
	0x0142010a,
	0x0104015e,
	0x009b01b8,
	0x000a0214,
	0xff4e0272,
	0x00e1022a,
	0x001401d8,
	0xff6d0184,
	0xfef20133,
	0xfea100e4,
	0xfe7d009a,
	0xfe830057,
	0xfeb1001f,
	0xff01fff2,
	0xff69ffd5,
	0xffe0ffc8,
	0x005dffcd,
	0x00ceffe2,
	0x012c0007,
	0x016b003a,
	0x01850078,
	0x017600be,
	0x013d010a,
	0x00d6015b,
	0x004601ad,
	0xff8a0201,
	0x00ae01c1,
	0xffe10179,
	0xff3a0131,
	0xfec000ea,
	0xfe7100a5,
	0xfe510064,
	0xfe5c0029,
	0xfe91fff8,
	0xfee9ffd0,
	0xff5cffb6,
	0xffddffab,
	0x0065ffae,
	0x00e0ffc1,
	0x0148ffe3,
	0x018e000f,
	0x01af0046,
	0x01a40084,
	0x016e00c6,
	0x0109010d,
	0x00790154,
	0xffbe019d,
	0x0081015e,
	0xffb40123,
	0xff0d00e7,
	0xfe9400ac,
	0xfe480072,
	0xfe2a003c,
	0xfe3a000a,
	0xfe74ffe1,
	0xfed5ffbf,
	0xff50ffa9,
	0xffdbff9f,
	0x006cffa3,
	0x00f1ffb3,
	0x0160ffcf,
	0x01aefff5,
	0x01d40023,
	0x01cd0056,
	0x0199008e,
	0x013500c9,
	0x00a60104,
	0xffea0141,
	0x005e0105,
	0xff9100d7,
	0xfeea00a7,
	0xfe720079,
	0xfe26004c,
	0xfe0b0021,
	0xfe1ffffa,
	0xfe5effd9,
	0xfec4ffbe,
	0xff46ffad,
	0xffd9ffa5,
	0x0072ffa7,
	0x00feffb4,
	0x0174ffcb,
	0x01c7ffe9,
	0x01f1000d,
	0x01ed0036,
	0x01bb0062,
	0x01580090,
	0x00ca00bf,
	0x000e00ee,
	0x004400b2,
	0xff760091,
	0xfecf0070,
	0xfe57004f,
	0xfe0d002f,
	0xfdf40010,
	0xfe0afff4,
	0xfe4cffdd,
	0xfeb7ffca,
	0xff3fffbd,
	0xffd7ffb7,
	0x0076ffb9,
	0x0108ffc3,
	0x0183ffd3,
	0x01daffe8,
	0x02070002,
	0x0205001f,
	0x01d4003e,
	0x0172005f,
	0x00e40080,
	0x002800a1,
	0x00330061,
	0xff65004e,
};

MMP_ULONG m_ulDeltaMemC_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfebe003c,
	0xfe46002a,
	0xfdfd0017,
	0xfde40007,
	0xfdfcfff7,
	0xfe41ffea,
	0xfeafffdf,
	0xff3affd8,
	0xffd6ffd5,
	0x0079ffd6,
	0x010fffdb,
	0x018dffe4,
	0x01e7fff0,
	0x0216ffff,
	0x0216000f,
	0x01e50020,
	0x01840033,
	0x00f60045,
	0x00390058,
	0x002c0014,
	0xff5d0010,
	0xfeb6000c,
	0xfe3f0008,
	0xfdf60005,
	0xfdde0001,
	0xfdf6fffe,
	0xfe3cfffb,
	0xfeabfff9,
	0xff38fff7,
	0xffd6fff7,
	0x007bfff7,
	0x0112fff8,
	0x0192fffa,
	0x01ecfffc,
	0x021cffff,
	0x021c0003,
	0x01ed0006,
	0x018b000a,
	0x00fd000e,
	0x00410012,
	0x002effc6,
	0xff60ffd1,
	0xfeb9ffdc,
	0xfe41ffe7,
	0xfdf8fff2,
	0xfde0fffc,
	0xfdf80006,
	0xfe3e000e,
	0xfead0015,
	0xff380019,
	0xffd6001b,
	0x007a001a,
	0x01110017,
	0x01900012,
	0x01ea000a,
	0x021a0001,
	0x021afff7,
	0x01eaffed,
	0x0189ffe2,
	0x00fbffd7,
	0x003effcb,
	0x003aff78,
	0xff6cff91,
	0xfec5ffab,
	0xfe4dffc5,
	0xfe04ffde,
	0xfdebfff5,
	0xfe02000b,
	0xfe46001e,
	0xfeb3002d,
	0xff3c0036,
	0xffd7003b,
	0x00780039,
	0x010c0032,
	0x01890026,
	0x01e10015,
	0x02100000,
	0x020fffea,
	0x01deffd2,
	0x017cffb8,
	0x00eeff9f,
	0x0032ff85,
	0x0050ff25,
	0xff82ff4d,
	0xfedbff75,
	0xfe63ff9d,
	0xfe19ffc4,
	0xfdfeffe8,
	0xfe14000a,
	0xfe540027,
	0xfebd003e,
	0xff42004d,
	0xffd80053,
	0x00740051,
	0x01030046,
	0x017c0033,
	0x01d10019,
	0x01fdfff9,
	0x01faffd6,
	0x01c9ffb1,
	0x0166ff89,
	0x00d8ff61,
	0x001cff39,
	0x006ffecf,
	0xffa1ff04,
	0xfefaff3a,
	0xfe82ff6f,
	0xfe36ffa3,
	0xfe1affd3,
	0xfe2cffff,
	0xfe680025,
	0xfecc0043,
	0xff4b0057,
	0xffda0060,
	0x006f005d,
	0x00f8004e,
	0x016b0035,
	0x01bb0013,
	0x01e3ffe9,
	0x01deffbb,
	0x01abff89,
	0x0147ff54,
	0x00b9ff20,
	0xfffdfeea,
	0x0097fe71,
	0xffcafeb2,
	0xff23fef5,
	0xfeaaff36,
};

MMP_ULONG m_ulDeltaMemC_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfe5cff76,
	0xfe3dffb1,
	0xfe4bffe8,
	0xfe820016,
	0xfedf003a,
	0xff550052,
	0xffdc005d,
	0x0068005a,
	0x00e90048,
	0x01540029,
	0x019e0000,
	0x01c2ffcd,
	0x01b9ff94,
	0x0184ff57,
	0x011fff16,
	0x0090fed4,
	0xffd4fe91,
	0x00c6fe0c,
	0xfffafe59,
	0xff52fea7,
	0xfed8fef3,
	0xfe88ff3e,
	0xfe66ff83,
	0xfe6fffc2,
	0xfea0fff7,
	0xfef50021,
	0xff62003d,
	0xffdf0049,
	0x00610045,
	0x00d70031,
	0x013a000d,
	0x017dffde,
	0x019bffa3,
	0x018eff61,
	0x0156ff19,
	0x00f0fecd,
	0x0061fe81,
	0xffa5fe32,
	0x00fffd9b,
	0x0032fdf3,
	0xff8afe4c,
	0xff0ffea2,
	0xfebcfef6,
	0xfe96ff43,
	0xfe99ff8a,
	0xfec3ffc5,
	0xff0efff4,
	0xff710013,
	0xffe20020,
	0x0058001c,
	0x00c30006,
	0x011cffde,
	0x0157ffa9,
	0x016eff67,
	0x015cff1d,
	0x0121fecd,
	0x00b9fe77,
	0x0028fe20,
	0xff6cfdc7,
	0x013bfd24,
	0x006ffd86,
	0xffc6fde8,
	0xff49fe46,
	0xfef3fea2,
	0xfec8fef6,
	0xfec5ff43,
	0xfee7ff83,
	0xff28ffb6,
	0xff80ffd7,
	0xffe5ffe5,
	0x004fffe0,
	0x00aeffc8,
	0x00fdff9e,
	0x012eff65,
	0x013eff1e,
	0x0127fecd,
	0x00e8fe76,
	0x007efe17,
	0xffecfdb8,
	0xff30fd55,
};

MMP_ULONG m_ulDeltaMemD_000_127_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0x00b20272,
	0xfff60214,
	0xff6501b8,
	0xfefc015e,
	0xfebe010a,
	0xfeaa00bc,
	0xfebe0077,
	0xfef40040,
	0xff470017,
	0xffad0000,
	0x001dfffb,
	0x00880009,
	0x00e50029,
	0x012b005a,
	0x01510098,
	0x015100e2,
	0x01280133,
	0x00d4018b,
	0x005801e6,
	0xffb00244,
	0xfee7029f,
	0x00760201,
	0xffba01ad,
	0xff2a015b,
	0xfec3010a,
	0xfe8a00be,
	0xfe7b0078,
	0xfe95003a,
	0xfed40007,
	0xff32ffe2,
	0xffa3ffcd,
	0x0020ffc8,
	0x0097ffd5,
	0x00fffff2,
	0x014f001f,
	0x017d0057,
	0x0183009a,
	0x015f00e4,
	0x010e0133,
	0x00930184,
	0xffec01d8,
	0xff230229,
	0x0042019d,
	0xff870154,
	0xfef7010d,
	0xfe9200c6,
	0xfe5c0084,
	0xfe510046,
	0xfe72000f,
	0xfeb8ffe3,
	0xff20ffc1,
	0xff9bffae,
	0x0023ffab,
	0x00a4ffb6,
	0x0117ffd0,
	0x016ffff8,
	0x01a40029,
	0x01af0064,
	0x018f00a5,
	0x014000ea,
	0x00c60131,
	0x001f0179,
	0xff5601c0,
	0x00160141,
	0xff5a0104,
	0xfecb00c9,
	0xfe67008e,
	0xfe330056,
	0xfe2c0023,
	0xfe52fff5,
	0xfea0ffcf,
	0xff0fffb3,
	0xff94ffa3,
	0x0025ff9f,
	0x00b0ffa9,
	0x012bffbf,
	0x018cffe1,
	0x01c6000a,
	0x01d6003c,
	0x01b80072,
	0x016c00ac,
	0x00f300e7,
	0x004c0123,
	0xff82015d,
	0xfff200ee,
	0xff3600bf,
	0xfea80090,
	0xfe450062,
	0xfe130036,
	0xfe0f000d,
	0xfe39ffe9,
	0xfe8cffcb,
	0xff02ffb4,
	0xff8effa7,
	0x0027ffa5,
	0x00baffad,
	0x013cffbe,
	0x01a2ffd9,
	0x01e1fffa,
	0x01f50021,
	0x01da004c,
	0x018e0079,
	0x011600a7,
	0x006f00d7,
	0xffa50104,
	0xffd800a1,
	0xff1c0080,
	0xfe8e005f,
	0xfe2c003e,
	0xfdfb001f,
	0xfdf90002,
	0xfe26ffe8,
	0xfe7dffd3,
	0xfef8ffc3,
	0xff8affb9,
	0x0029ffb7,
	0x00c1ffbd,
	0x0149ffca,
	0x01b4ffdd,
	0x01f6fff4,
	0x020c0010,
	0x01f3002f,
	0x01a9004f,
	0x01310070,
	0x008a0091,
	0xffc000b1,
	0xffc70058,
	0xff0a0045,
};

MMP_ULONG m_ulDeltaMemD_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfe7c0033,
	0xfe1b0020,
	0xfdea000f,
	0xfdeaffff,
	0xfe19fff0,
	0xfe73ffe4,
	0xfef1ffdb,
	0xff87ffd6,
	0x002affd5,
	0x00c6ffd8,
	0x0151ffdf,
	0x01bfffea,
	0x0204fff7,
	0x021c0007,
	0x02030017,
	0x01ba002a,
	0x0142003c,
	0x009b004e,
	0xffd10060,
	0xffbf0012,
	0xff03000e,
	0xfe75000a,
	0xfe130006,
	0xfde40003,
	0xfde4ffff,
	0xfe14fffc,
	0xfe6efffa,
	0xfeeefff8,
	0xff85fff7,
	0x002afff7,
	0x00c8fff7,
	0x0155fff9,
	0x01c4fffb,
	0x020afffe,
	0x02220001,
	0x020a0005,
	0x01c10008,
	0x014a000c,
	0x00a30010,
	0xffd80014,
	0xffc2ffcb,
	0xff05ffd7,
	0xfe77ffe2,
	0xfe16ffed,
	0xfde6fff7,
	0xfde60001,
	0xfe16000a,
	0xfe700012,
	0xfeef0017,
	0xff86001a,
	0x002a001b,
	0x00c80019,
	0x01530015,
	0x01c2000e,
	0x02080006,
	0x0220fffc,
	0x0208fff2,
	0x01bfffe7,
	0x0147ffdc,
	0x00a0ffd1,
	0xffd6ffc6,
	0xffceff85,
	0xff12ff9f,
	0xfe84ffb8,
	0xfe22ffd2,
	0xfdf1ffea,
	0xfdf00000,
	0xfe1f0015,
	0xfe770026,
	0xfef40032,
	0xff880039,
	0x0029003b,
	0x00c40036,
	0x014d002d,
	0x01ba001e,
	0x01fe000b,
	0x0215fff5,
	0x01fcffde,
	0x01b3ffc5,
	0x013bffab,
	0x0094ff91,
	0xffcaff79,
	0xffe4ff39,
	0xff28ff61,
	0xfe9aff89,
	0xfe37ffb1,
	0xfe06ffd6,
	0xfe03fff9,
	0xfe2f0019,
	0xfe840033,
	0xfefd0046,
	0xff8c0051,
	0x00280053,
	0x00be004d,
	0x0143003e,
	0x01ac0027,
	0x01ec000a,
	0x0202ffe8,
	0x01e7ffc4,
	0x019dff9d,
	0x0125ff75,
	0x007eff4d,
	0xffb4ff26,
	0x0003feea,
	0xff47ff20,
	0xfeb9ff54,
	0xfe55ff89,
	0xfe22ffbb,
	0xfe1dffe9,
	0xfe450013,
	0xfe950035,
	0xff08004e,
	0xff91005d,
	0x00260060,
	0x00b50057,
	0x01340043,
	0x01980025,
	0x01d4ffff,
	0x01e6ffd3,
	0x01caffa3,
	0x017eff6f,
	0x0106ff3a,
	0x005fff04,
	0xff95fed0,
	0x002cfe91,
	0xff70fed4,
	0xfee1ff16,
	0xfe7cff57,
};

MMP_ULONG m_ulDeltaMemD_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
	0xfe47ff94,
	0xfe3effcd,
	0xfe620000,
	0xfeac0029,
	0xff170048,
	0xff98005a,
	0x0024005d,
	0x00ab0052,
	0x0121003a,
	0x017e0016,
	0x01b5ffe8,
	0x01c3ffb1,
	0x01a4ff76,
	0x0156ff36,
	0x00ddfef5,
	0x0036feb2,
	0xff6dfe72,
	0x005bfe32,
	0xff9ffe81,
	0xff10fecd,
	0xfeaaff19,
	0xfe72ff61,
	0xfe65ffa3,
	0xfe83ffde,
	0xfec6000d,
	0xff290031,
	0xff9f0045,
	0x00210049,
	0x009e003d,
	0x010b0021,
	0x0160fff7,
	0x0191ffc2,
	0x019aff83,
	0x0178ff3e,
	0x0128fef3,
	0x00aefea7,
	0x0006fe59,
	0xff3dfe0d,
	0x0094fdc7,
	0xffd8fe20,
	0xff47fe77,
	0xfedffecd,
	0xfea4ff1d,
	0xfe92ff67,
	0xfea9ffa9,
	0xfee4ffde,
	0xff3d0006,
	0xffa8001c,
	0x001e0020,
	0x008f0013,
	0x00f2fff4,
	0x013dffc5,
	0x0167ff8a,
	0x016aff43,
	0x0144fef6,
	0x00f1fea2,
	0x0076fe4c,
	0xffcefdf3,
	0xff05fd9c,
	0x00d0fd55,
	0x0014fdb8,
	0xff82fe17,
	0xff18fe76,
	0xfed9fecd,
	0xfec2ff1e,
	0xfed2ff65,
	0xff03ff9e,
	0xff52ffc8,
	0xffb1ffe0,
	0x001bffe5,
	0x0080ffd7,
	0x00d8ffb6,
	0x0119ff83,
	0x013bff43,
	0x0138fef6,
	0x010dfea2,
	0x00b7fe46,
	0x003afde8,
	0xff91fd86,
	0xfec8fd26,
};