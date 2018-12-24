FROM ubuntu:latest 
RUN apt -y update 
RUN apt -y install apache2 
RUN service apache2 restart
COPY ./public-html/ /var/www/html/
EXPOSE 80 
RUN /bin/bash -c "source /etc/apache2/envvars"
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
