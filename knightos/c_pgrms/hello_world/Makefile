include .knightos/variables.make

#INCLUDE+=add to your include path

HEADERS:=$(wildcard *.h)

ALL_TARGETS:=$(BIN)hello_world

$(BIN)hello_world: $(OUT)main.o $(OUT)crt0.o
	mkdir -p $(BIN)
	scas $(ASFLAGS) $(OUT)crt0.o $(LIBRARIES) $(OUT)main.o -o $(BIN)hello_world

include .knightos/sdk.make
