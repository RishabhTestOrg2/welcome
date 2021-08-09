FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install httpd -y

COPY index.html /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
