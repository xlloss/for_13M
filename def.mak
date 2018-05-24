
#Current compile senso
#OV2710 OV2710_MIPI OV4689 OV5653 OV9712 OV10822 IMX175 IMX214 IMX322 IMX326 AR0330 AR0330_OPTM AR0331 AR0835 AR1820 CP8210 H42_MIPI PS1210 JXF02 AR0330_2ND DM5150 BIT1603 PS5220 PS5250 PS5270 HM2140))
########## For BOOT code ##############

### 512M MINIBOOT ###
ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV4689 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV9712 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX175 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX214 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX322 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX326 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0331
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR1820
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_CP8210
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_JXF02
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR1335
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_2ND
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMINIBOOT_FW \
                -DDRAM_ID=DRAM_DDR \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x4000000 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),512M)) 
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMINIBOOT_FW \
                -DDRAM_ID=DRAM_DDR \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x4000000 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif  
endif  
endif  

### 1G MINIBOOT ###
ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV4689 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV9712 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX175 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX214 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX322 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX326 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0331
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR1820
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_CP8210
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_JXF02
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR1335
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_2ND
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMINIBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x8000000 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMINIBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x8000000 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif

### 2G MINIBOOT ###
ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV4689 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV9712 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX175 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX214 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX322 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX326 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0331
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR1820
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_CP8210
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_JXF02
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR1335
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_2ND
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMINIBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS52570))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMINIBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0xF000000 \
                -DBUILD_FW \
                -DSENSOR_PS52570
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMINIBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0xF000000 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif

## 512M AITBOOT###
ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV4689 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_OV9712 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX175 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX214 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX322 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_IMX326 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0331
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR1820
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_CP8210
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_JXF02
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR1335
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_2ND
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMBOOT_FW \
                -DDRAM_ID=DRAM_DDR \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x4000000 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMBOOT_FW \
                -DDRAM_ID=DRAM_DDR \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x4000000 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif

### 1G AITBOOT ###
ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV4689 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_OV9712 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX175 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX214 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX322 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_IMX326 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0331
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR1820
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_CP8210
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_JXF02
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR1335
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_2ND
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x8000000 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x8000000 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif

### 2G AITBOOT ###
ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV4689 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_OV9712 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX175 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX214 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX322 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_IMX326 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0331
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR1820
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_CP8210
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_JXF02
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR1335
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_AR0330_2ND
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DBUILD_CE \
		-DMBOOT_FW \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0xF000000 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DBUILD_CE \
                -DMBOOT_FW \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0xF000000 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif

########## For 512M SENSOR & ALL Target ##############
ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV4689
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),512M))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),OV5653))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x4000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_OV5653
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV9712
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),512M))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),OV10822))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x4000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_OV10822
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX175
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX214
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX322
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX326
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0331 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),512M))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),AR0835))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x4000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_AR0835 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR1820 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_CP8210 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),512M))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),PS1210))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x4000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_PS1210 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_JXF02 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR1335 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DAR0330_2ND 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),512M))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),DM5150))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x4000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DDM5150 
# endif
# endif
# endif

# ifeq ($(DDR),$(filter $(DDR),512M))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),BIT1603))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x4000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DBIT1603 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x4000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DALL_FW \
                -DBUILD_CE \
                -DCPU_ID=CPU_A \
                -DDRAM_ID=DRAM_DDR \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x4000000 \
                -DISP_EN=1 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),512M))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DALL_FW \
                -DBUILD_CE \
                -DCPU_ID=CPU_A \
                -DDRAM_ID=DRAM_DDR \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x4000000 \
                -DISP_EN=1 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif

########## For 1G SENSOR & ALL Target ##############
ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV4689
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),1G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),OV5653))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x8000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_OV5653
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV9712
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),1G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),OV10822))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x8000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_OV10822
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX175
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX214
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX322
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX326
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0331 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),1G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),AR0835))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x8000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_AR0835 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR1820 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_CP8210 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),1G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),PS1210))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x8000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_PS1210 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_JXF02 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR1335 
endif
endif
endif


ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DAR0330_2ND 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),1G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),DM5150))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x8000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DDM5150 
# endif
# endif
# endif

# ifeq ($(DDR),$(filter $(DDR),1G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),BIT1603))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0x8000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DBIT1603 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0x8000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DALL_FW \
                -DBUILD_CE \
                -DCPU_ID=CPU_A \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x8000000 \
                -DISP_EN=1 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),1G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DALL_FW \
                -DBUILD_CE \
                -DCPU_ID=CPU_A \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0x8000000 \
                -DISP_EN=1 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif

########## For 2G SENSOR & ALL Target ##############
ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV2710 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV2710_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV2710_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9732_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV9732_MIPI
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV4689))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV4689
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),2G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),OV5653))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0xF000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_OV5653
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),OV9712))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_OV9712
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),2G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),OV10822))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0xF000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_OV10822
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX175))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX175
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX214))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX214
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX322))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX322
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),IMX326))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_IMX326
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0330 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0237))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0237 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_OPTM))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0330_OTPM
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0331))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR0331 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),2G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),AR0835))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0xF000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_AR0835 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1820))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR1820 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),CP8210))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_CP8210 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),H42_MIPI))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_H42_MIPI 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),2G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),PS1210))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0xF000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DSENSOR_PS1210 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),JXF02))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_JXF02 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR1335))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_AR1335 
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),AR0330_2ND))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DAR0330_2ND 
endif
endif
endif

# ifeq ($(DDR),$(filter $(DDR),2G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),DM5150))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0xF000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DDM5150 
# endif
# endif
# endif

# ifeq ($(DDR),$(filter $(DDR),2G))
# ifeq ($(TARGET),$(filter $(TARGET),ALL))
# ifeq ($(SENSOR),$(filter $(SENSOR),BIT1603))
# DEF :=  -DSA_PL	\
		# -DALL_FW \
		# -DBUILD_CE \
		# -DCPU_ID=CPU_A \
		# -DDRAM_ID=DRAM_DDR3 \
		# -DCHIP=MCR_V2 \
		# -DDRAM_SIZE=0xF000000 \
		# -DISP_EN=1 \
		# -DBUILD_FW \
		# -DBIT1603 
# endif
# endif
# endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5220))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_PS5220
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5250))
DEF :=  -DSA_PL	\
		-DALL_FW \
		-DBUILD_CE \
		-DCPU_ID=CPU_A \
		-DDRAM_ID=DRAM_DDR3 \
		-DCHIP=MCR_V2 \
		-DDRAM_SIZE=0xF000000 \
		-DISP_EN=1 \
		-DBUILD_FW \
		-DSENSOR_PS5250
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),PS5270))
DEF :=  -DSA_PL \
                -DALL_FW \
                -DBUILD_CE \
                -DCPU_ID=CPU_A \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0xF000000 \
                -DISP_EN=1 \
                -DBUILD_FW \
                -DSENSOR_PS5270
endif
endif
endif

ifeq ($(DDR),$(filter $(DDR),2G))
ifeq ($(TARGET),$(filter $(TARGET),ALL))
ifeq ($(SENSOR),$(filter $(SENSOR),HM2140))
DEF :=  -DSA_PL \
                -DALL_FW \
                -DBUILD_CE \
                -DCPU_ID=CPU_A \
                -DDRAM_ID=DRAM_DDR3 \
                -DCHIP=MCR_V2 \
                -DDRAM_SIZE=0xF000000 \
                -DISP_EN=1 \
                -DBUILD_FW \
                -DSENSOR_HM2140
endif
endif
endif
