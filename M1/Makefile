.PHONY: app clean run

NAME    := M1
OBJ_DIR := build
BINARY  := $(OBJ_DIR)/$(NAME)

CROSS_COMPILE ?=
CC      := $(CROSS_COMPILE)gcc
LD      := $(CROSS_COMPILE)gcc
CFLAGS  := -O2 -MMD -Iinclude

.DEFAULT_GOAL = app

-include config.mk

# Files to be compiled
cfiles-y += src/main.c

OBJS := $(cfiles-y:src/%.c=$(OBJ_DIR)/%.o)

-include Makefile.compile
-include $(OBJS:.o=.d)

app: $(BINARY)

$(BINARY): $(OBJS)
	$(LD) -O2 -o $@ $^

run: $(BINARY)
	@./$<

clean: 
	rm -rf $(OBJ_DIR) include/generated include/config
