FROM httpd:2.4

# Ensure the SSL directory exists
RUN mkdir -p /usr/local/apache2/conf/ssl

# Copy your SSL certificates
COPY ./certs/localhost.crt /usr/local/apache2/conf/ssl/
COPY ./certs/localhost.key /usr/local/apache2/conf/ssl/

# Copy your Apache configurations
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf