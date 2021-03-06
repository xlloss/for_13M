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
		0x01d00105,
		0x016400de,
		0x010900b9,
		0x00bf0098,
		0x00830079,
		0x0057005f,
		0x00350048,
		0x001f0036,
		0x00100029,
		0x00070020,
		0x0001001d,
		0xfffc001e,
		0xfff50024,
		0xffe9002f,
		0xffd7003f,
		0xffbb0053,
		0xff95006c,
		0xff610088,
		0xff1e00a8,
		0xfecc00cb,
		0xfe6800f1,
		0x01b400d6,
		0x014a00b3,
		0x00f00093,
		0x00a90075,
		0x0070005a,
		0x00460043,
		0x0027002e,
		0x0014001e,
		0x00080012,
		0x0003000b,
		0x00000007,
		0xffff0009,
		0xfffb000e,
		0xfff30018,
		0xffe40026,
		0xffcb0038,
		0xffa7004e,
		0xff760067,
		0xff350083,
		0xfee600a2,
		0xfe8300c4,
		0x019b00ab,
		0x0132008e,
		0x00db0071,
		0x00950058,
		0x005e0040,
		0x0036002c,
		0x001b001b,
		0x000a000d,
		0x00010002,
		0xfffffffc,
		0x0000fff9,
		0x0001fffa,
		0x0001ffff,
		0xfffb0007,
		0xffef0013,
		0xffd90023,
		0xffb80036,
		0xff89004c,
		0xff4a0064,
		0xfefc007f,
		0xfe9c009c,
		0x01860087,
		0x011f006e,
		0x00c80056,
		0x00840041,
		0x004f002d,
		0x0029001c,
		0x0010000d,
		0x00020002,
		0xfffbfff9,
		0xfffcfff3,
		0xfffffff1,
		0x0003fff2,
		0x0005fff6,
		0x0002fffd,
		0xfff80007,
		0xffe50014,
		0xffc50024,
		0xff990036,
		0xff5c004b,
		0xff0f0061,
		0xfeb0007a,
		0x01740065,
		0x010e0051,
		0x00b9003f,
		0x0076002d,
		0x0043001e,
		0x001f0010,
		0x00070005,
		0xfffbfffb,
		0xfff7fff4,
		0xfff9fff0,
		0xfffeffee,
		0x0005ffef,
		0x0009fff2,
		0x0008fff8,
		0x00000000,
		0xffee000a,
		0xffd10017,
		0xffa60025,
		0xff6a0036,
		0xff1f0048,
		0xfec1005b,
		0x01670048,
		0x01020039,
		0x00ae002b,
		0x006c001e,
		0x00390013,
		0x00170009,
		0x00000000,
		0xfff5fff9,
		0xfff3fff4,
		0xfff7fff1,
		0xfffeffef,
		0x0006fff0,
		0x000cfff2,
		0x000dfff6,
		0x0006fffd,
		0xfff60004,
		0xffda000e,
		0xffb00018,
		0xff750025,
		0xff2b0032,
		0xfece0040,
		0x015e002c,
		0x00f90023,

};

MMP_ULONG m_ulDeltaMemA_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x00a5001a,
		0x00640012,
		0x0033000b,
		0x00110004,
		0xfffcffff,
		0xfff2fffa,
		0xfff0fff7,
		0xfff5fff5,
		0xfffefff4,
		0x0007fff4,
		0x000efff6,
		0x0010fff8,
		0x000bfffc,
		0xfffb0001,
		0xffe00007,
		0xffb7000e,
		0xff7d0016,
		0xff34001e,
		0xfed70028,
		0x01590013,
		0x00f4000f,
		0x00a1000b,
		0x00600007,
		0x002f0004,
		0x000e0001,
		0xfff9ffff,
		0xfff0fffd,
		0xffeffffc,
		0xfff4fffb,
		0xfffdfffa,
		0x0007fffb,
		0x000ffffb,
		0x0012fffc,
		0x000dfffe,
		0xfffe0000,
		0xffe30003,
		0xffbb0006,
		0xff820009,
		0xff38000d,
		0xfedc0011,
		0x0157fffa,
		0x00f3fffb,
		0x00a0fffc,
		0x005ffffd,
		0x002effff,
		0x000d0000,
		0xfff80000,
		0xffef0001,
		0xffef0001,
		0xfff40002,
		0xfffd0002,
		0x00070002,
		0x000f0002,
		0x00120001,
		0x000d0001,
		0xffff0000,
		0xffe4ffff,
		0xffbbfffe,
		0xff82fffd,
		0xff39fffc,
		0xfeddfffa,
		0x015bffe1,
		0x00f6ffe7,
		0x00a3ffee,
		0x0062fff3,
		0x0031fff9,
		0x000ffffd,
		0xfffa0001,
		0xfff00004,
		0xffef0007,
		0xfff50008,
		0xfffe0009,
		0x00070009,
		0x000e0008,
		0x00110006,
		0x000c0003,
		0xfffdffff,
		0xffe2fffb,
		0xffb9fff6,
		0xff80fff1,
		0xff37ffeb,
		0xfedaffe4,
		0x0162ffc6,
		0x00fdffd2,
		0x00a9ffde,
		0x0068ffe8,
		0x0036fff2,
		0x0013fffa,
		0xfffe0001,
		0xfff30007,
		0xfff2000b,
		0xfff6000e,
		0xfffe000f,
		0x0006000e,
		0x000d000c,
		0x000f0009,
		0x00090004,
		0xfff9fffd,
		0xffddfff6,
		0xffb4ffed,
		0xff7affe3,
		0xff30ffd8,
		0xfed3ffcc,
		0x016dffaa,
		0x0108ffbb,
		0x00b3ffcc,
		0x0071ffda,
		0x003effe8,
		0x001afff4,
		0x0003fffe,
		0xfff80006,
		0xfff5000c,
		0xfff80010,
		0xfffe0012,
		0x00050011,
		0x000a000e,
		0x000b0009,
		0x00040002,
		0xfff2fff9,
		0xffd6ffee,
		0xffabffe2,
		0xff70ffd3,
		0xff26ffc4,
		0xfec8ffb3,
		0x017cff8b,
		0x0116ffa1,
		0x00c0ffb7,
		0x007dffca,

};

MMP_ULONG m_ulDeltaMemA_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x0049ffdb,
		0x0024ffeb,
		0x000bfff8,
		0xfffe0002,
		0xfff9000a,
		0xfffa000f,
		0xffff0011,
		0x00040010,
		0x0007000d,
		0x00060006,
		0xfffdfffd,
		0xffeafff1,
		0xffccffe3,
		0xffa0ffd3,
		0xff64ffc0,
		0xff18ffac,
		0xfeb9ff96,
		0x0190ff68,
		0x0128ff83,
		0x00d1ff9d,
		0x008cffb4,
		0x0056ffca,
		0x0030ffdd,
		0x0015ffed,
		0x0005fff9,
		0xfffe0003,
		0xfffd0009,
		0xffff000c,
		0x0002000b,
		0x00030007,
		0xffffffff,
		0xfff4fff3,
		0xffdfffe5,
		0xffbfffd4,
		0xff91ffc0,
		0xff53ffa9,
		0xff06ff90,
		0xfea6ff76,
		0x01a6ff41,
		0x013eff61,
		0x00e5ff7f,
		0x009eff9b,
		0x0066ffb4,
		0x003dffca,
		0x0021ffdc,
		0x000effeb,
		0x0005fff7,
		0x0001fffe,
		0x00000001,
		0x00000000,
		0xfffefffb,
		0xfff7fff1,
		0xffeaffe4,
		0xffd2ffd3,
		0xffb0ffbf,
		0xff80ffa8,
		0xff40ff8d,
		0xfef2ff70,
		0xfe90ff51,
		0x01c1ff13,
		0x0157ff38,
		0x00fcff5b,
		0x00b4ff7a,
		0x0079ff97,
		0x004effb0,
		0x002effc5,
		0x0019ffd6,
		0x000cffe3,
		0x0005ffeb,
		0x0001ffef,
		0xfffdffee,
		0xfff8ffe8,
		0xffeeffdd,
		0xffdeffce,
		0xffc3ffbb,
		0xff9effa4,
		0xff6cff89,
		0xff2aff6b,
		0xfed9ff4a,
		0xfe76ff26,

};

MMP_ULONG m_ulDeltaMemB_000_127_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x019800f1,
		0x013400cb,
		0x00e200a8,
		0x009f0088,
		0x006b006c,
		0x00450053,
		0x0029003f,
		0x0017002f,
		0x000b0024,
		0x0004001e,
		0xffff001d,
		0xfff90020,
		0xfff00029,
		0xffe10036,
		0xffcb0048,
		0xffa9005f,
		0xff7d0079,
		0xff410098,
		0xfef700b9,
		0xfe9c00de,
		0xfe320104,
		0x017d00c4,
		0x011a00a2,
		0x00cb0083,
		0x008a0067,
		0x0059004e,
		0x00350038,
		0x001c0026,
		0x000d0018,
		0x0005000e,
		0x00010009,
		0x00000007,
		0xfffd000b,
		0xfff80012,
		0xffec001e,
		0xffd9002e,
		0xffba0043,
		0xff90005a,
		0xff570075,
		0xff100093,
		0xfeb600b3,
		0xfe4e00d5,
		0x0164009c,
		0x0104007f,
		0x00b60064,
		0x0077004c,
		0x00480036,
		0x00270023,
		0x00110013,
		0x00050007,
		0xffffffff,
		0xfffffffa,
		0x0000fff9,
		0x0001fffc,
		0xffff0002,
		0xfff6000d,
		0xffe5001b,
		0xffca002c,
		0xffa20040,
		0xff6b0058,
		0xff250071,
		0xfece008e,
		0xfe6700ab,
		0x0150007a,
		0x00f10061,
		0x00a4004b,
		0x00670036,
		0x003b0024,
		0x001b0014,
		0x00080007,
		0xfffefffd,
		0xfffbfff6,
		0xfffdfff2,
		0x0001fff1,
		0x0004fff3,
		0x0005fff9,
		0xfffe0002,
		0xfff0000d,
		0xffd7001c,
		0xffb1002d,
		0xff7c0041,
		0xff380056,
		0xfee1006e,
		0xfe7c0086,
		0x013f005b,
		0x00e10048,
		0x00960036,
		0x005a0025,
		0x002f0017,
		0x0012000a,
		0x00000000,
		0xfff8fff8,
		0xfff7fff2,
		0xfffbffef,
		0x0002ffee,
		0x0007fff0,
		0x0009fff4,
		0x0005fffb,
		0xfff90005,
		0xffe10010,
		0xffbd001e,
		0xff8a002d,
		0xff47003f,
		0xfef20051,
		0xfe8e0065,
		0x01320040,
		0x00d50032,
		0x008b0025,
		0x00500018,
		0x0026000e,
		0x000a0004,
		0xfffafffd,
		0xfff3fff6,
		0xfff4fff2,
		0xfffafff0,
		0x0002ffef,
		0x0009fff1,
		0x000dfff4,
		0x000bfff9,
		0x00000000,
		0xffe90009,
		0xffc70013,
		0xff94001e,
		0xff52002b,
		0xfefe0039,
		0xfe9b0048,
		0x01290028,
		0x00cc001e,

};

MMP_ULONG m_ulDeltaMemB_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x00830016,
		0x0049000e,
		0x00200007,
		0x00050001,
		0xfff5fffc,
		0xfff0fff8,
		0xfff2fff6,
		0xfff9fff4,
		0x0002fff4,
		0x000bfff5,
		0x0010fff7,
		0x000efffa,
		0x0004ffff,
		0xffef0004,
		0xffcd000b,
		0xff9c0012,
		0xff5b001a,
		0xff070023,
		0xfea4002c,
		0x01240011,
		0x00c8000d,
		0x007e0009,
		0x00450006,
		0x001d0003,
		0x00020000,
		0xfff3fffe,
		0xffeefffc,
		0xfff1fffb,
		0xfff9fffb,
		0x0003fffa,
		0x000cfffb,
		0x0011fffc,
		0x0010fffd,
		0x0007ffff,
		0xfff20001,
		0xffd10004,
		0xffa00007,
		0xff5f000b,
		0xff0c000f,
		0xfea90013,
		0x0123fffa,
		0x00c7fffc,
		0x007efffd,
		0x0045fffe,
		0x001cffff,
		0x00010000,
		0xfff30001,
		0xffee0001,
		0xfff10002,
		0xfff90002,
		0x00030002,
		0x000c0002,
		0x00110001,
		0x00110001,
		0x00080000,
		0xfff30000,
		0xffd2ffff,
		0xffa1fffd,
		0xff60fffc,
		0xff0dfffb,
		0xfeaafffa,
		0x0126ffe4,
		0x00c9ffeb,
		0x0080fff1,
		0x0047fff6,
		0x001efffb,
		0x0003ffff,
		0xfff40003,
		0xffef0006,
		0xfff20008,
		0xfff90009,
		0x00020009,
		0x000b0008,
		0x00110007,
		0x00100004,
		0x00060001,
		0xfff1fffd,
		0xffcffff9,
		0xff9efff3,
		0xff5dffee,
		0xff0affe7,
		0xfea7ffe1,
		0x012dffcc,
		0x00d0ffd8,
		0x0086ffe3,
		0x004cffed,
		0x0023fff6,
		0x0007fffd,
		0xfff70004,
		0xfff10009,
		0xfff3000c,
		0xfffa000e,
		0x0002000f,
		0x000a000e,
		0x000e000b,
		0x000d0007,
		0x00020001,
		0xffedfffa,
		0xffcafff2,
		0xff98ffe8,
		0xff57ffde,
		0xff03ffd2,
		0xfea0ffc6,
		0x0138ffb3,
		0x00daffc4,
		0x0090ffd3,
		0x0055ffe2,
		0x002affee,
		0x000efff9,
		0xfffc0002,
		0xfff50009,
		0xfff6000e,
		0xfffb0011,
		0x00020012,
		0x00080010,
		0x000b000c,
		0x00080006,
		0xfffdfffe,
		0xffe6fff4,
		0xffc2ffe8,
		0xff8fffda,
		0xff4dffcc,
		0xfef8ffbb,
		0xfe95ffaa,
		0x0147ff96,
		0x00e8ffac,
		0x009cffc0,
		0x0060ffd3,

};

MMP_ULONG m_ulDeltaMemB_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x0034ffe3,
		0x0016fff1,
		0x0003fffd,
		0xfffa0006,
		0xfff9000d,
		0xfffc0010,
		0x00010011,
		0x0006000f,
		0x0007000a,
		0x00020002,
		0xfff5fff8,
		0xffdcffeb,
		0xffb7ffdb,
		0xff83ffca,
		0xff40ffb7,
		0xfeeaffa1,
		0xfe86ff8b,
		0x015aff76,
		0x00faff90,
		0x00adffa9,
		0x006fffc0,
		0x0041ffd4,
		0x0021ffe5,
		0x000cfff3,
		0x0001ffff,
		0xfffd0007,
		0xfffe000b,
		0x0001000c,
		0x00030009,
		0x00020003,
		0xfffbfff9,
		0xffebffed,
		0xffd0ffdd,
		0xffaaffca,
		0xff74ffb4,
		0xff2fff9d,
		0xfed8ff83,
		0xfe72ff68,
		0x0170ff51,
		0x010eff70,
		0x00c0ff8d,
		0x0080ffa8,
		0x0050ffbf,
		0x002effd3,
		0x0016ffe4,
		0x0009fff1,
		0x0002fffb,
		0x00000000,
		0x00000001,
		0xfffffffe,
		0xfffbfff7,
		0xfff2ffeb,
		0xffdfffdc,
		0xffc3ffca,
		0xff9affb4,
		0xff62ff9b,
		0xff1bff7f,
		0xfec2ff61,
		0xfe5bff41,
		0x018aff26,
		0x0127ff4a,
		0x00d6ff6b,
		0x0094ff89,
		0x0062ffa4,
		0x003dffbb,
		0x0022ffce,
		0x0012ffdd,
		0x0008ffe8,
		0x0003ffee,
		0xffffffef,
		0xfffbffeb,
		0xfff4ffe3,
		0xffe7ffd6,
		0xffd2ffc5,
		0xffb2ffb0,
		0xff87ff97,
		0xff4cff7a,
		0xff04ff5b,
		0xfea9ff38,
		0xfe41ff14,

};

MMP_ULONG m_ulDeltaMemC_000_127_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x01c100ed,
		0x015700c8,
		0x00fc00a5,
		0x00b40086,
		0x00790069,
		0x004e0050,
		0x002e003b,
		0x0019002a,
		0x000c001d,
		0x00050015,
		0x00010011,
		0xfffd0012,
		0xfff80018,
		0xffee0023,
		0xffde0032,
		0xffc30045,
		0xff9e005c,
		0xff6c0077,
		0xff2a0095,
		0xfed900b6,
		0xfe7600da,
		0x01a600bf,
		0x013e009f,
		0x00e50081,
		0x009e0065,
		0x0066004c,
		0x003d0036,
		0x00210024,
		0x000e0015,
		0x00050009,
		0x00010002,
		0x0000ffff,
		0x00000000,
		0xfffe0005,
		0xfff7000f,
		0xffea001c,
		0xffd2002d,
		0xffb00041,
		0xff800058,
		0xff400073,
		0xfef20090,
		0xfe9000af,
		0x01900098,
		0x0128007d,
		0x00d10063,
		0x008c004c,
		0x00560036,
		0x00300023,
		0x00150013,
		0x00050007,
		0xfffefffd,
		0xfffdfff7,
		0xfffffff4,
		0x0002fff5,
		0x0003fff9,
		0xffff0001,
		0xfff4000d,
		0xffdf001b,
		0xffbf002c,
		0xff910040,
		0xff530057,
		0xff060070,
		0xfea6008a,
		0x017c0075,
		0x0116005f,
		0x00c00049,
		0x007d0036,
		0x00490025,
		0x00240015,
		0x000b0008,
		0xfffefffe,
		0xfff9fff6,
		0xfffafff1,
		0xffffffef,
		0x0004fff0,
		0x0007fff3,
		0x0006fffa,
		0xfffd0003,
		0xffea000f,
		0xffcc001d,
		0xffa0002d,
		0xff640040,
		0xff180054,
		0xfeb9006a,
		0x016d0056,
		0x01080045,
		0x00b30034,
		0x00710026,
		0x003e0018,
		0x001a000c,
		0x00030002,
		0xfff8fffa,
		0xfff5fff4,
		0xfff8fff0,
		0xfffeffee,
		0x0005ffef,
		0x000afff2,
		0x000bfff7,
		0x0004fffe,
		0xfff20007,
		0xffd60012,
		0xffab001e,
		0xff70002d,
		0xff26003c,
		0xfec8004d,
		0x0162003a,
		0x00fd002e,
		0x00a90022,
		0x00680018,
		0x0036000e,
		0x00130006,
		0xfffeffff,
		0xfff3fff9,
		0xfff2fff5,
		0xfff6fff2,
		0xfffefff1,
		0x0006fff2,
		0x000dfff4,
		0x000ffff7,
		0x0009fffc,
		0xfff90003,
		0xffdd000a,
		0xffb40013,
		0xff7a001d,
		0xff300028,
		0xfed30034,
		0x015b001f,
		0x00f60019,

};

MMP_ULONG m_ulDeltaMemC_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x00a30012,
		0x0062000d,
		0x00310007,
		0x000f0003,
		0xfffaffff,
		0xfff0fffc,
		0xffeffff9,
		0xfff5fff8,
		0xfffefff7,
		0x0007fff7,
		0x000efff8,
		0x0011fffa,
		0x000cfffd,
		0xfffd0001,
		0xffe20005,
		0xffb9000a,
		0xff80000f,
		0xff370015,
		0xfeda001c,
		0x01570006,
		0x00f30005,
		0x00a00004,
		0x005f0003,
		0x002e0001,
		0x000d0000,
		0xfff80000,
		0xffefffff,
		0xffefffff,
		0xfff4fffe,
		0xfffdfffe,
		0x0007fffe,
		0x000ffffe,
		0x0012ffff,
		0x000dffff,
		0xffff0000,
		0xffe40001,
		0xffbb0002,
		0xff820003,
		0xff390004,
		0xfedd0006,
		0x0159ffed,
		0x00f4fff1,
		0x00a1fff5,
		0x0060fff9,
		0x002ffffc,
		0x000effff,
		0xfff90001,
		0xfff00003,
		0xffef0004,
		0xfff40005,
		0xfffd0006,
		0x00070005,
		0x000f0005,
		0x00120004,
		0x000d0002,
		0xfffe0000,
		0xffe3fffd,
		0xffbbfffa,
		0xff82fff7,
		0xff38fff3,
		0xfedcffef,
		0x015effd4,
		0x00f9ffdd,
		0x00a5ffe6,
		0x0064ffee,
		0x0033fff5,
		0x0011fffc,
		0xfffc0001,
		0xfff20006,
		0xfff00009,
		0xfff5000b,
		0xfffe000c,
		0x0007000c,
		0x000e000a,
		0x00100008,
		0x000b0004,
		0xfffbffff,
		0xffe0fff9,
		0xffb7fff2,
		0xff7dffea,
		0xff34ffe2,
		0xfed7ffd8,
		0x0167ffb8,
		0x0102ffc7,
		0x00aeffd5,
		0x006cffe2,
		0x0039ffed,
		0x0017fff7,
		0x00000000,
		0xfff50007,
		0xfff3000c,
		0xfff7000f,
		0xfffe0011,
		0x00060010,
		0x000c000e,
		0x000d000a,
		0x00060003,
		0xfff6fffc,
		0xffdafff2,
		0xffb0ffe8,
		0xff75ffdb,
		0xff2bffce,
		0xfeceffc0,
		0x0174ff9b,
		0x010effaf,
		0x00b9ffc1,
		0x0076ffd3,
		0x0043ffe2,
		0x001ffff0,
		0x0007fffb,
		0xfffb0005,
		0xfff7000c,
		0xfff90010,
		0xfffe0012,
		0x00050011,
		0x0009000e,
		0x00080008,
		0x00000000,
		0xffeefff6,
		0xffd1ffe9,
		0xffa6ffdb,
		0xff6affca,
		0xff1fffb8,
		0xfec1ffa5,
		0x0186ff79,
		0x011fff92,
		0x00c8ffaa,
		0x0084ffbf,

};

MMP_ULONG m_ulDeltaMemC_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x004fffd3,
		0x0029ffe4,
		0x0010fff3,
		0x0002fffe,
		0xfffb0007,
		0xfffc000d,
		0xffff000f,
		0x0003000e,
		0x0005000a,
		0x00020003,
		0xfff8fff9,
		0xffe5ffec,
		0xffc5ffdc,
		0xff99ffca,
		0xff5cffb5,
		0xff0fff9f,
		0xfeb0ff86,
		0x019bff55,
		0x0132ff72,
		0x00dbff8f,
		0x0095ffa8,
		0x005effc0,
		0x0036ffd4,
		0x001bffe5,
		0x000afff3,
		0x0001fffe,
		0xffff0004,
		0x00000007,
		0x00010006,
		0x00010001,
		0xfffbfff9,
		0xffefffed,
		0xffd9ffdd,
		0xffb8ffca,
		0xff89ffb4,
		0xff4aff9c,
		0xfefcff81,
		0xfe9cff64,
		0x01b4ff2a,
		0x014aff4d,
		0x00f0ff6d,
		0x00a9ff8b,
		0x0070ffa6,
		0x0046ffbd,
		0x0027ffd2,
		0x0014ffe2,
		0x0008ffee,
		0x0003fff5,
		0x0000fff9,
		0xfffffff7,
		0xfffbfff2,
		0xfff3ffe8,
		0xffe4ffda,
		0xffcbffc8,
		0xffa7ffb2,
		0xff76ff99,
		0xff35ff7d,
		0xfee6ff5e,
		0xfe83ff3c,
		0x01cffefc,
		0x0164ff23,
		0x0108ff48,
		0x00bfff69,
		0x0083ff87,
		0x0056ffa2,
		0x0035ffb8,
		0x001effca,
		0x0010ffd8,
		0x0007ffe0,
		0x0001ffe4,
		0xfffcffe3,
		0xfff5ffdd,
		0xffeaffd1,
		0xffd7ffc2,
		0xffbcffad,
		0xff95ff95,
		0xff62ff79,
		0xff1fff59,
		0xfecdff36,
		0xfe69ff10,

};

MMP_ULONG m_ulDeltaMemD_000_127_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x018a00da,
		0x012700b6,
		0x00d60095,
		0x00940077,
		0x0062005c,
		0x003d0045,
		0x00220032,
		0x00120023,
		0x00080018,
		0x00030012,
		0xffff0011,
		0xfffb0015,
		0xfff4001d,
		0xffe7002a,
		0xffd2003b,
		0xffb20050,
		0xff870069,
		0xff4c0086,
		0xff0400a5,
		0xfea900c8,
		0xfe4100ec,
		0x017000af,
		0x010e0090,
		0x00c00073,
		0x00800058,
		0x00500041,
		0x002e002d,
		0x0016001c,
		0x0009000f,
		0x00020005,
		0x00000000,
		0x0000ffff,
		0xffff0002,
		0xfffb0009,
		0xfff20015,
		0xffdf0024,
		0xffc30036,
		0xff9a004c,
		0xff620065,
		0xff1b0081,
		0xfec2009f,
		0xfe5b00bf,
		0x015a008a,
		0x00fa0070,
		0x00ad0057,
		0x006f0040,
		0x0041002c,
		0x0021001b,
		0x000c000d,
		0x00010001,
		0xfffdfff9,
		0xfffefff5,
		0x0001fff4,
		0x0003fff7,
		0x0002fffd,
		0xfffb0007,
		0xffeb0013,
		0xffd00023,
		0xffaa0036,
		0xff74004c,
		0xff2f0063,
		0xfed8007d,
		0xfe720098,
		0x0147006a,
		0x00e80054,
		0x009c0040,
		0x0060002d,
		0x0034001d,
		0x0016000f,
		0x00030003,
		0xfffafffa,
		0xfff9fff3,
		0xfffcfff0,
		0x0001ffef,
		0x0006fff1,
		0x0007fff6,
		0x0002fffe,
		0xfff50008,
		0xffdc0015,
		0xffb70025,
		0xff830036,
		0xff400049,
		0xfeea005f,
		0xfe860075,
		0x0138004d,
		0x00da003c,
		0x0090002d,
		0x0055001e,
		0x002a0012,
		0x000e0007,
		0xfffcfffe,
		0xfff5fff7,
		0xfff6fff2,
		0xfffbffef,
		0x0002ffee,
		0x0008fff0,
		0x000bfff4,
		0x0008fffa,
		0xfffd0002,
		0xffe6000c,
		0xffc20018,
		0xff8f0026,
		0xff4d0034,
		0xfef80045,
		0xfe950056,
		0x012d0034,
		0x00d00028,
		0x0086001d,
		0x004c0013,
		0x0023000a,
		0x00070003,
		0xfff7fffc,
		0xfff1fff7,
		0xfff3fff4,
		0xfffafff2,
		0x0002fff1,
		0x000afff2,
		0x000efff5,
		0x000dfff9,
		0x0002ffff,
		0xffed0006,
		0xffca000e,
		0xff980018,
		0xff570022,
		0xff03002e,
		0xfea0003a,
		0x0126001c,
		0x00c90015,

};

MMP_ULONG m_ulDeltaMemD_128_255_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x0080000f,
		0x0047000a,
		0x001e0005,
		0x00030001,
		0xfff4fffd,
		0xffeffffa,
		0xfff2fff8,
		0xfff9fff7,
		0x0002fff7,
		0x000bfff8,
		0x0011fff9,
		0x0010fffc,
		0x0006ffff,
		0xfff10003,
		0xffcf0007,
		0xff9e000d,
		0xff5d0012,
		0xff0a0019,
		0xfea7001f,
		0x01230006,
		0x00c70004,
		0x007e0003,
		0x00450002,
		0x001c0001,
		0x00010000,
		0xfff3ffff,
		0xffeeffff,
		0xfff1fffe,
		0xfff9fffe,
		0x0003fffe,
		0x000cfffe,
		0x0011ffff,
		0x0011ffff,
		0x00080000,
		0xfff30000,
		0xffd20001,
		0xffa10003,
		0xff600004,
		0xff0d0005,
		0xfeaa0006,
		0x0124ffef,
		0x00c8fff3,
		0x007efff7,
		0x0045fffa,
		0x001dfffd,
		0x00020000,
		0xfff30002,
		0xffee0004,
		0xfff10005,
		0xfff90005,
		0x00030006,
		0x000c0005,
		0x00110004,
		0x00100003,
		0x00070001,
		0xfff2ffff,
		0xffd1fffc,
		0xffa0fff9,
		0xff5ffff5,
		0xff0cfff1,
		0xfea9ffed,
		0x0129ffd8,
		0x00ccffe2,
		0x0083ffea,
		0x0049fff2,
		0x0020fff9,
		0x0005ffff,
		0xfff50004,
		0xfff00008,
		0xfff2000a,
		0xfff9000c,
		0x0002000c,
		0x000b000b,
		0x00100009,
		0x000e0006,
		0x00040001,
		0xffeffffc,
		0xffcdfff5,
		0xff9cffee,
		0xff5bffe6,
		0xff07ffdd,
		0xfea4ffd4,
		0x0132ffc0,
		0x00d5ffce,
		0x008bffdb,
		0x0050ffe8,
		0x0026fff2,
		0x000afffc,
		0xfffa0003,
		0xfff3000a,
		0xfff4000e,
		0xfffa0010,
		0x00020011,
		0x0009000f,
		0x000d000c,
		0x000b0007,
		0x00000000,
		0xffe9fff7,
		0xffc7ffed,
		0xff94ffe2,
		0xff52ffd5,
		0xfefeffc7,
		0xfe9bffb8,
		0x013fffa5,
		0x00e1ffb8,
		0x0096ffca,
		0x005affdb,
		0x002fffe9,
		0x0012fff6,
		0x00000000,
		0xfff80008,
		0xfff7000e,
		0xfffb0011,
		0x00020012,
		0x00070010,
		0x0009000c,
		0x00050005,
		0xfff9fffb,
		0xffe1fff0,
		0xffbdffe2,
		0xff8affd3,
		0xff47ffc1,
		0xfef2ffaf,
		0xfe8eff9b,
		0x0150ff86,
		0x00f1ff9f,
		0x00a4ffb5,
		0x0067ffca,

};

MMP_ULONG m_ulDeltaMemD_256_335_HD[LDC_DELTA_ARRAY_SIZE] =
{
		0x003bffdc,
		0x001bffec,
		0x0008fff9,
		0xfffe0003,
		0xfffb000a,
		0xfffd000e,
		0x0001000f,
		0x0004000d,
		0x00050007,
		0xfffefffe,
		0xfff0fff3,
		0xffd7ffe4,
		0xffb1ffd3,
		0xff7cffbf,
		0xff38ffaa,
		0xfee1ff92,
		0xfe7cff7a,
		0x0164ff64,
		0x0104ff81,
		0x00b6ff9c,
		0x0077ffb4,
		0x0048ffca,
		0x0027ffdd,
		0x0011ffed,
		0x0005fff9,
		0xffff0001,
		0xffff0006,
		0x00000007,
		0x00010004,
		0xfffffffe,
		0xfff6fff3,
		0xffe5ffe5,
		0xffcaffd4,
		0xffa2ffc0,
		0xff6bffa8,
		0xff25ff8f,
		0xfeceff72,
		0xfe67ff55,
		0x017dff3c,
		0x011aff5e,
		0x00cbff7d,
		0x008aff99,
		0x0059ffb2,
		0x0035ffc8,
		0x001cffda,
		0x000dffe8,
		0x0005fff2,
		0x0001fff7,
		0x0000fff9,
		0xfffdfff5,
		0xfff8ffee,
		0xffecffe2,
		0xffd9ffd2,
		0xffbaffbd,
		0xff90ffa6,
		0xff57ff8b,
		0xff10ff6d,
		0xfeb6ff4d,
		0xfe4eff2b,
		0x0197ff10,
		0x0133ff36,
		0x00e1ff59,
		0x009eff79,
		0x006bff95,
		0x0044ffad,
		0x0029ffc2,
		0x0016ffd1,
		0x000bffdd,
		0x0004ffe3,
		0xffffffe4,
		0xfff9ffe0,
		0xfff0ffd8,
		0xffe2ffca,
		0xffcbffb8,
		0xffaaffa2,
		0xff7dff87,
		0xff41ff69,
		0xfef8ff48,
		0xfe9cff23,
		0xfe33fefd,

};