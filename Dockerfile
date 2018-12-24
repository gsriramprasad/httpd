FROM centos:latest

RUN yum -y install httpd -y

COPY ./public-html/ /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]


