FROM ubuntu:latest 
RUN apt -y update 
RUN apt -y install apache2 
RUN apt -y install apache2-utils 
RUN apt -y clean
COPY ./public-html/ /var/www/html/
EXPOSE 80 
CMD [“apache2ctl”, “-D”, “FOREGROUND”]



