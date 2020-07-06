FROM php:7-apache
LABEL version="1.0"
LABEL MAINTAINER="Ganesh Chandrasekaran info@oviamsolutions.com"
LABEL Organization="Oviam Solutions"
RUN docker-php-ext-install mysqli pdo pdo_mysql
