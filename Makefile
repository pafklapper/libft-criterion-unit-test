# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: sverschu </var/mail/sverschu>                +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/30 16:10:10 by sverschu      #+#    #+#                  #
#    Updated: 2019/11/23 23:45:45 by sverschu      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# ONLY CHANGE IF THE GODS HAVE DECIDED TO USE PROPER FOLDERS
LIBFT_INC = $(LIBFT_FOLDER)

NAME = run-test

# C sourcefiles
SRC = criterion_libft.c $(LIBFT_FOLDER)/libft.a

# compiler and linker
CC = clang
CC_FLAGS = -Werror -Wextra -Wall -lcriterion

# commands
all: libft $(NAME)

$(NAME): $(SRC)
	@$(CC) $(CC_FLAGS) $(EXT_FLAGS) -I$(LIBFT_INC) $(SRC) -o $(NAME)

clean:
	@$(RM) $(OBJ) $(BONUS_OBJ)

fclean: clean
	@$(RM) $(NAME)

libft: 
	@$(MAKE) -C $(LIBFT_FOLDER) re

love: all
	@echo "Functions like split and trim are open to interpretation; your idea of these functions might be different than mine."
	@./$(NAME)
re: fclean all
