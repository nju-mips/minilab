.PHONY: all emu clean-all run-emu

OBJ_DIR := output
SCALA_DIR := src
SCALA_FILES := $(shell find $(SCALA_DIR) -name "*.scala")
EMU_CXXFILES := $(shell find $(EMU_SRC_DIR) -name "*.cpp")

emu: $(EMU_BIN)
run-emu: emu
	@$(EMU_BIN)

# add rules to compile chisel and run with verilator

clean-all:
	rm -rf $(OBJ_DIR)
