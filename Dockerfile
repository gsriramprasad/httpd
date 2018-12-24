FROM centos:6.6

RUN yum install -y httpd

COPY ./public-html/ /usr/local/apache2/htdocs/

ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]


