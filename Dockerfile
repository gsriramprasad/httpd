FROM ubuntu:latest 
RUN apt -y update 
RUN apt -y install apache2 
COPY ./public-html/ /var/www/html/
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

