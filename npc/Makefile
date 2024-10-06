all:
	@echo "Write this Makefile by your self."

ifeq ($(VERILATOR_ROOT),)
VERILATOR = verilator
else
export VERILATOR_ROOT
VERILATOR = $(VERILATOR_ROOT)/bin/verilator
endif

# 设置全局变量 NPC_HOME
NPC_HOME = /home/oslab/cpu/ysyx-workbench/npc

# 设置 Verilog 和 C 源文件的路径
VSRC = $(NPC_HOME)/vsrc
CSRC = $(NPC_HOME)/csrc
VERILOG_FILE = $(VSRC)/top.v
CPP_FILE = $(CSRC)/main.cpp

sim:
	$(call git_commit, "sim RTL") # DO NOT REMOVE THIS LINE!!!

	@echo "-- VERILATE & BUILD --------"
	$(VERILATOR) -Wall $(VERILOG_FILE) $(CPP_FILE) --cc --trace --exe --build 

	@echo "-- RUN ---------------------"
	obj_dir/Vtop
	@echo "-- DONE --------------------"
	
maintainer-copy::
clean mostlyclean distclean maintainer-clean::
	-rm -rf obj_dir *.log *.dmp *.vpd core

include ../Makefile