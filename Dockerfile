FROM ubuntu:latest 
RUN apt -y update 
RUN apt -y install apache2 
CMD source /etc/apache2/envvars
RUN service apache2 restart
COPY ./public-html/ /var/www/html/
EXPOSE 80 
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]

