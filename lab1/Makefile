.PHONY: app clean run

NAME    := lab1
OBJ_DIR := build
BINARY  := $(OBJ_DIR)/$(NAME)
CC      := gcc
LD      := gcc
CFLAGS  := -O2 -MMD -Iinclude

.DEFAULT_GOAL = app

-include config.mk

# Files to be compiled
cfiles-y += src/main.c
cfiles-$(CONFIG_BUBBLE_SORT) += src/bubble_sort.c
cfiles-$(CONFIG_SELECTION_SORT) += src/selection_sort.c
cfiles-$(CONFIG_NORMAL_PRINTER) += src/normal_printer.c
cfiles-$(CONFIG_REVERSE_PRINTER) += src/reverse_printer.c

OBJS := $(cfiles-y:src/%.c=$(OBJ_DIR)/%.o)

-include Makefile.compile
-include $(OBJS:.o=.d)

app: $(BINARY)

$(BINARY): $(OBJS)
	@echo + LD $@
	@$(LD) -O2 -o $@ $^

run: $(BINARY)
	@./$<

clean: 
	rm -rf $(OBJ_DIR) include/generated include/config
