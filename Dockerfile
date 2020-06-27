FROM php:7.2-apache

COPY ./apache2/sites-available/* /etc/apache2/sites-available/

COPY ./ssl/certs/* /etc/ssl/certs/

COPY ./ssl/private/* /etc/ssl/private/

RUN a2enmod ssl rewrite && a2ensite default-ssl