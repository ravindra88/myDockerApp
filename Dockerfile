FROM ubuntu:latest
Maintainer rkn047@gmail.com
RUN apt-get -y update
RUN apt-get -y install apache2 php php-mysql
EXPOSE 80
ADD code /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
