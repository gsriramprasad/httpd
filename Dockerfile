FROM ubuntu:latest 
RUN apt -y update 
RUN apt -y install apache2 
RUN apt -y install apache2-utils 
RUN apt -y clean
RUN source /etc/apache2/envvars
COPY ./public-html/ /var/www/html/
EXPOSE 80 
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]



