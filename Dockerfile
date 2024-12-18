# Use an official PHP runtime as a parent image with Apache
FROM php:8.0-apache

# Copy all files from the current directory to the Apache server's public directory
COPY . /var/www/html/

# Set the correct permissions for the web server to write to the monitors directory
RUN chown -R www-data:www-data /var/www/html/monitors && chmod -R 755 /var/www/html/monitors

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
