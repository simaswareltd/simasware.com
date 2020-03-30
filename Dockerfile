FROM httpd:2.4.41
#COPY ./public-site/ /usr/local/apache2/htdocs/
COPY ./simasware_com/public/ /usr/local/apache2/htdocs/

# Version 10