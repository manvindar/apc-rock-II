KERNELDIR=../../../../
CROSS = arm_1103_le-
CC=		$(CROSS)gcc
LD=		$(CROSS)ld
STRIP = $(CROSS)strip

DEBUG = n 

# Add your debugging flag (or not) to EXTRA_CFLAGS
ifeq ($(DEBUG),y)
#  DEBFLAGS = -O -g -DSCULL_DEBUG # "-O" is needed to expand inlines
DEBFLAGS = -O0 -g -DSCULL_DEBUG # "-O" is needed to expand inlines

else
  DEBFLAGS = -O2 -Wall
endif

EXTRA_CFLAGS += $(DEBFLAGS)


MY_MODULE_NAME=s_wmt_ts_sitronix

#obj-$(CONFIG_TOUCHSCREEN_SITRONIX) := $(MY_MODULE_NAME).o
obj-m := $(MY_MODULE_NAME).o
$(MY_MODULE_NAME)-objs  := sitronix_i2c.o irq_gpio.o

default:
	$(MAKE) -C $(KERNELDIR) SUBDIRS=$(PWD) modules
	$(STRIP) --strip-debug $(MY_MODULE_NAME).ko
	@rm -rf *.o *~ core .depend .*.cmd *.mod.c .tmp_versions *.order *.symvers

clean:
	@rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions *.order *.symvers

