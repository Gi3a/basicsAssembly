
NAME = libasm.a
CC = gcc
ASM = nasm
FLAGS = -fmacho64

SRC =	_read.s\
		_write.s\
		_strlen.s\
		_strcpy.s\
		_strdup.s\
		_strcmp.s\

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME) : $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@$(CC) main.c $(NAME)
	@echo > fill.txt "Hello, world"
	@touch empty.txt

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)
	@$(RM) main.o
	@$(RM) *.out
	@$(RM) *.txt

re: fclean all

main.o : main.cimyan
	$(CC) -c main.c -I libasm.h

%.o: %.s
	$(ASM) $(FLAGS) $< -o $@

.PHONY: all clean fclean re
