FROM mysql:temp
MAINTAINER HirokiMoriya


EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]
