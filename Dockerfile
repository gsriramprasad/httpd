FROM ubuntu:latest 
RUN apt -y update 
RUN apt -y install apache2 
RUN service apache2 restart
COPY ./public-html/ /var/www/html/
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/apache2", "-D", "FOREGROUND"]

