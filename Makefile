DIR = libASM/
SRC := bzero_asm.s putchar_asm.s puts_asm.s strlen_asm.s
OBJ = $(DIR)*.o
OUT = test

all:
	$(foreach fil, $(SRC), `nasm -f macho64 $(DIR)$(fil)`)
	gcc -c main.c
	gcc main.o $(OBJ) -o $(OUT)

clean:
	rm -f main.o || true
	rm $(OUT) || true

fclean: clean
	rm ./*.o || true
	rm -f $(OBJ) || true

