# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amejia <amejia@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/31 00:30:51 by amejia            #+#    #+#              #
#    Updated: 2023/07/31 00:46:17 by amejia           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

CMD ["mysqld_safe"]