OUTPUT = hello.prg
ACME = acme -f cbm
VICE = x64

all: $(OUTPUT)

$(OUTPUT): main.a definitions.a hello.a rasterbar.a
	$(ACME) -o $(OUTPUT) main.a

run: $(OUTPUT)
	$(VICE) $(OUTPUT)

clean:
	rm $(OUTPUT)
