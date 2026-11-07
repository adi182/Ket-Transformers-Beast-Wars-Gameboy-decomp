RGBASM ?= rgbasm
RGBLINK ?= rgblink
RGBFIX ?= rgbfix
RGBGFX ?= rgbgfx

BUILD_DIR := ../build
OBJECT := $(BUILD_DIR)/step7.o
ROM := $(BUILD_DIR)/step7.gbc
BANK4_TILES := $(BUILD_DIR)/bank4_627F_2bpp.bin

.PHONY: all
all: $(ROM)

$(BUILD_DIR):
	mkdir -p $@

$(BANK4_TILES): ../gfx/bank4_627F_tiles.png | $(BUILD_DIR)
	$(RGBGFX) -o $@ $<

$(OBJECT): game.asm bank_*.asm $(BANK4_TILES) ../analysis/disassembly/hardware.inc ../analysis/disassembly/bank_*.asm | $(BUILD_DIR)
	$(RGBASM) -o $@ game.asm

$(ROM): $(OBJECT)
	$(RGBLINK) -n $(BUILD_DIR)/step7.sym -m $(BUILD_DIR)/step7.map -o $@ $<
	$(RGBFIX) -v -p 255 $@
