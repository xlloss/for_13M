#
# common.mak
#
# For GNUC
TOOLDIR :=
PRETOOL := $(TOOLDIR)arm-none-eabi-
CC := $(PRETOOL)gcc
AR := $(PRETOOL)ar
AS := $(PRETOOL)as
LD := $(PRETOOL)ld
OD := $(PRETOOL)objdump
OC := $(PRETOOL)objcopy

DEPDIR := .d
$(shell mkdir -p $(DEPDIR) >/dev/null)
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.Td
ASMFLAGS = -MMD -MP $(DEPDIR)/$*.Td
TARGET_ARCH = -mcpu=arm926ej-s -march=armv5te -mtune=arm926ej-s


ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT AITBOOT ALL))

ifeq ($(DEBUG), 0)

OBJPATH := $(TOP)/rel/$(TARGET)/obj
DBGFLAG :=

else
OBJPATH := $(TOP)/dbg/$(TARGET)/obj
DBGFLAG := -g

endif

endif

OBJS := $(SRCS:.c=.o)
OBJS := $(OBJS:.s=.o)
OBJS := $(OBJS:.c32=.o)
OBJS := $(addprefix $(OBJPATH)/, $(OBJS))
OUTPUT_OPTION = -o $@
INC_ALL := -I$(TOP)/include 
ifeq ($(TARGET),$(filter $(TARGET),ALL))
CFLAGS = $(DBGFLAG) -Wall -Wno-uninitialized -Wno-unused-variable -Wno-maybe-uninitialized -Wno-missing-braces -Werror -Wno-unused-but-set-variable -O2 -fdata-sections -ffunction-sections\
		 -funroll-loops -fprefetch-loop-arrays -falign-loops=4 -pipe -fomit-frame-pointer -finline-functions -falign-jumps=4 -falign-functions=4 \
		 -frerun-cse-after-loop -ffp-contract=off -fstrength-reduce -fcaller-saves -fif-conversion2 -floop-optimize -fdefer-pop \
		 -ffreestanding $(DEF)
endif
ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT AITBOOT))
CFLAGS = $(DBGFLAG) -Wall -Wno-unused-variable -Wno-maybe-uninitialized -Werror -Wno-unused-but-set-variable -Wno-unused-label -Os \
		 -funroll-loops -fdata-sections -ffunction-sections -ffreestanding $(DEF)
endif

AFLAGS = $(DBGFLAG)
COMPILE = @$(CC) $(DEPFLAGS) $(CFLAGS) $(INCS) $(TARGET_ARCH) -c
ASSEMBL = @$(CC) $(DEPFLAGS) $(CFLAGS) $(INCS) $(TARGET_ARCH) -c
POSTCOMPILE = @mv -f $(DEPDIR)/$*.Td $(DEPDIR)/$*.d

$(DEPDIR)/%.d: ;
.PRECIOUS: $(DEPDIR)/%.d

ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT AITBOOT))
$(OBJPATH)/%.o : %.c $(DEPDIR)/%.d
		@echo CC $<
		$(COMPILE) -mthumb $(OUTPUT_OPTION) $<
		$(POSTCOMPILE)
endif
#ALL only use arm compile option
ifeq ($(TARGET),$(filter $(TARGET),ALL))
$(OBJPATH)/%.o : %.c $(DEPDIR)/%.d
		@echo CC $<
		$(COMPILE) -marm $(OUTPUT_OPTION) $<
		$(POSTCOMPILE)
endif

$(OBJPATH)/%.o : %.s $(DEPDIR)/%.d
		@echo CC $<
		$(COMPILE) -marm $(OUTPUT_OPTION) $<

$(OBJPATH)/%.o : %.c32 $(DEPDIR)/%.d
		@echo CC $<
		$(COMPILE) -x c -marm $(OUTPUT_OPTION) $<
		$(POSTCOMPILE)



