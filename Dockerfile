FROM php:7.2-apache
MAINTAINER thales@htiweb.inf.br

RUN a2enmod rewrite

ENV ServerName "localhost.test" 

# Copy application source
COPY index.php /var/www/html/
COPY index.html /var/www/html/
RUN chown -R www-data:www-data /var/www/html/
