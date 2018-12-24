FROM centos:6.6

RUN sudo apt-get install apache2 -y

COPY ./public-html/ /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]


