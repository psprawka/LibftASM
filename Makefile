# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: psprawka <psprawka@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/27 17:35:19 by psprawka          #+#    #+#              #
#    Updated: 2018/07/31 19:54:36 by psprawka         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftasm.a
FLAGS += -g -Wall -Wextra -Werror
#FLAGS +=  -fsanitize=address

SRC_DIR 	= srcs/

SRCS = $(SRC_DIR)ft_bzero.s \
		$(SRC_DIR)ft_cat.s \
		$(SRC_DIR)ft_isalnum.s \
		$(SRC_DIR)ft_isalpha.s \
		$(SRC_DIR)ft_isascii.s \
		$(SRC_DIR)ft_isdigit.s \
		$(SRC_DIR)ft_isprint.s \
		$(SRC_DIR)ft_memcpy.s \
		$(SRC_DIR)ft_memset.s \
		$(SRC_DIR)ft_puts.s \
		$(SRC_DIR)ft_strcat.s \
   	 	$(SRC_DIR)ft_strdup.s \
		$(SRC_DIR)ft_strlen.s \
		$(SRC_DIR)ft_tolower.s \
		$(SRC_DIR)ft_toupper.s \

OBJS += $(SRCS:.s=.o)

BUILD_PRINT = @echo "\r\033[38;5;206m[LIBFTASM] \x1B[38;5;218mBuilding $<"
DONE = @echo "\033[K\033[1;38;15;LLIBFTASM ready to use!\033[0m"
CLEAN_O = @echo "\033[38;5;246mObject files removed! [LIBFTASM]"
CLEAN_A = @echo "\033[38;5;246mExecutable removed! [LIBFTASM]"

all: $(NAME)

%.o: %.s
	$(BUILD_PRINT)
	@nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	$(DONE)
	
clean:
	@/bin/rm -rf $(OBJS)
	$(CLEAN_O)

fclean: clean
	@/bin/rm -rf $(NAME)
	$(CLEAN_A)

re: fclean all

.PHONY: all clean fclean re
