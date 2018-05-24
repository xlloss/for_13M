SRCS := \

ifeq ($(TARGET),$(filter $(TARGET),ALL))
DIRS := \
		src \
		project \
		example \
		vendor
endif

ifeq ($(TARGET),$(filter $(TARGET),MINIBOOT))
DIRS := \
		src \
		project
endif

ifeq ($(TARGET),$(filter $(TARGET),AITBOOT))
DIRS := \
		src \
		project \
		example \
		vendor
endif
