FROM ubuntu:latest 
RUN apt -y update 
RUN apt -y install apache2 
RUN apt -y install apache2-utils 
RUN apt -y clean
RUN source /etc/apache2/envvars
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]



