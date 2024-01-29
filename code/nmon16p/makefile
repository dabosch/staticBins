# NOTE: link the curent working copy of the code to lmon.c for compiling
CFLAGS=-g -O3 -Wall -lm
#LDFLAGS+=-lncurses
FILE=lmon.c

VERSION=16p

HW=$(shell uname -p | sed 's/ppc64le/POWER/' | sed 's/x86_64/X86/')

OSNAME=$(shell grep ^NAME /etc/os-release | sed 's/NAME=//' | sed 's/Red Hat Enterprise Linux Server/RHEL/' | sed 's/Red Hat Enterprise Linux Workstation/RHEL/' | sed 's/Red Hat Enterprise Linux/RHEL/'  | sed 's/"//g' )

OSVERSION=$(shell grep ^VERSION_ID /etc/os-release | tr '"' '.' | cut --delimiter=. --fields=2 )

nmon:
	cc $(FILE) -o nmon_$(HW)_$(OSNAME)$(OSVERSION)_$(VERSION) $(CFLAGS) $(LDFLAGS) -D $(HW) -D $(OSNAME)$(OSVERSION)

gpu:
	cc $(FILE) -o nmon_$(HW)_$(OSNAME)$(OSVERSION)_$(VERSION)_gpu $(CFLAGS) $(LDFLAGS) -D $(HW) -D $(OSNAME)$(OSVERSION) -D NVIDIA_GPU /usr/lib64/libnvidia-ml.so

list:
	@echo HW $(HW)
	@echo osname $(OSNAME)
	@echo osversion $(OSVERSION)

