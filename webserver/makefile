FILENAME=socket
DOTOFILE=main
PROGRAMS=program

all: cleanup
	nasm -f elf $(FILENAME).asm -o $(DOTOFILE).o
	ld -m elf_i386 $(DOTOFILE).o -o $(PROGRAMS)
	./$(PROGRAMS)

cleanup:
	rm -f $(DOTOFILE).o
	rm -f $(PROGRAM)
