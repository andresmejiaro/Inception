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

RUN apt-get update && apt-get install -y mariadb-server mariadb-client
COPY 50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY setupdb.sh /usr/src/app/setupdb.sh
RUN chmod +x /usr/src/app/setupdb.sh
RUN /usr/src/app/setupdb.sh
EXPOSE 3306


ENTRYPOINT [ "mysqld_safe" ] 
