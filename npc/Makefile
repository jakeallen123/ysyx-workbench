all:
	@echo "Write this Makefile by your self."

ifeq ($(VERILATOR_ROOT),)
VERILATOR = verilator
else
export VERILATOR_ROOT
VERILATOR = $(VERILATOR_ROOT)/bin/verilator
endif

sim:
	$(call git_commit, "sim RTL") # DO NOT REMOVE THIS LINE!!!
	VSRC = $(NPC_HOME)/vsrc
	CSRC = $(NPC_HOME)/csrc
	VERILOG_FILE = $(VSRC)/top.v
	CPP_FILE = $(CSRC)/main.cpp
	@echo "-- VERILATE & BUILD --------"
	$(VERILATOR) -cc --exe --build -j $(VERILOG_FILE) $(CPP_FILE)
	@echo "-- RUN ---------------------"
	obj_dir/Vtop
	@echo "-- DONE --------------------"
	
	maintainer-copy::
	clean mostlyclean distclean maintainer-clean::
	-rm -rf obj_dir *.log *.dmp *.vpd core

include ../Makefile
