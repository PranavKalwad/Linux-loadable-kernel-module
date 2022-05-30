obj-m +=tasks_lister.o


KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD :=$(shell pwd)

all:
	make -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
