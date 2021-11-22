FROM httpd:latest
LABEL maintainer=ian6ft5

# Copy project to web root
COPY ./ /usr/local/apache2/htdocs 
WORKDIR /usr/local/apache2/htdocs

# Change web root ownership to www-data user
RUN chown -R www-data /usr/local/apache2/htdocs

# Export default HTTP port
EXPOSE 80
