##
## EPITECH PROJECT, 2019
## MUL_my_defender_2018
## File description:
## makefile
##
## EPITECH PROJECT, 2019
## MUL_my_defender_2018
## File description:
## makefile
##

CC	= gcc -g

RM	= rm -f

NAME	= 110borwein

SRC	= main.c

OBJ	= $(addprefix src/,$(SRC:.c=.o))

CFLAGS	= -W -Wextra -Wall -I include/

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

all:	$(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re
