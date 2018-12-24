FROM httpd:2.4

ADD ./ /code/

#WORKDIR /code

COPY ./public-html/ /usr/local/apache2/htdocs/

RUN ls -la










#From sriramprasad/my-apache2:29

#ADD ./package.json /tmp/

#RUN cd /tmp/ && npm install 

#ADD ./ /code/

#RUN cp -r /tmp/node_modules/ /code/

#EXPOSE 80

#WORKDIR /code 

#ENTRYPOINT [ "httpd", "index.html"]

