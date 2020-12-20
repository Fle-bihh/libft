# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fle-biha <fle-biha@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/24 11:44:21 by ldenis            #+#    #+#              #
#    Updated: 2020/12/04 15:24:51 by fle-biha         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRCS			=	ft_isalnum.c ft_isprint.c ft_memcmp.c  ft_putchar_fd.c ft_split.c \
					ft_strlcat.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c \
					ft_itoa.c ft_memcpy.c  ft_putendl_fd.c ft_strchr.c  ft_strlcpy.c \
					ft_strnstr.c ft_tolower.c ft_bzero.c   ft_isascii.c ft_memccpy.c \
					ft_memmove.c ft_putnbr_fd.c  ft_strdup.c  ft_strlen.c  ft_strrchr.c \
					ft_toupper.c ft_calloc.c  ft_isdigit.c ft_memchr.c  ft_memset.c  \
					ft_putstr_fd.c  ft_strjoin.c ft_strmapi.c ft_strtrim.c
OBJS			= $(SRCS:.c=.o)

BONUS			=	ft_lstnew.c ft_lstadd_front.c \
					ft_lstsize.c ft_lstlast.c  \
					ft_lstadd_back.c ft_lstdelone.c \
					ft_lstclear.c ft_lstiter.c   \
					ft_lstmap.c
BONUS_OBJS		= $(BONUS:.c=.o)

CC				= @gcc
RM				= @/bin/rm -f
CFLAGS			= -Wall -Wextra -Werror -I.

NAME			= libft.a

all:			$(NAME)

$(NAME):		$(OBJS)
				@ar rcs $(NAME) $(OBJS)
				@echo "                  ____                                                                                   "
				@echo "     |           |                                                                                       "
				@echo "     |           |                                           ___     ___                               "
				@echo " ----|------     | _____                                    /   \   /   \                              "
				@echo "     |           |/     \                                   |       |       ()                         "
				@echo "     |           |       |      _____              ____   __|__   __|__    __       ____    ____       "
				@echo "     |           |       |     /     \            /    \    |       |        |     /    \  /    \      "
				@echo "     |           |       |    |_______|          |      |   |       |        |    |       |______|     "
				@echo "     |           |       |     \                 |      |   |       |        |    |        \           "
				@echo "      \____/  ___|___ ___|___   \____/            \____/  __|__   __|__    __|__   \____/   \____/   ()"

clean:
				$(RM) $(OBJS) $(BONUS_OBJS)
				@echo "----MAKE CLEAN----"

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

bonus:			$(OBJS) $(BONUS_OBJS)
				@ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)
				@echo "----MAKE BONUS----"