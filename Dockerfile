# Use an official PHP runtime as a parent image with Apache
FROM php:8.0-apache

# Copy all files from the current directory (including monitor.php) to the Apache server's public directory
COPY . /var/www/html/

# Expose port 80, which is the default HTTP port for Apache
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
