FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y apache2
COPY index.html /var/www/html
EXPOSE 80

ENTRYPOINT apachectl -D FOREGROUND
