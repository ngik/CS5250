TARGET_MODULE:=one
BUILDSYSTEM_DIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

obj-m := $(TARGET_MODULE).o

all : 
	# run kernel build system to make module
	$(MAKE) -C $(BUILDSYSTEM_DIR) M=$(PWD) modules
clean:
	# run kernel build system to cleanup in current directory
	$(MAKE) -C $(BUILDSYSTEM_DIR) M=$(PWD) clean
