#!/bin/bash
# Server setup script for Moodle

# Update package list and install dependencies
sudo apt update && sudo apt install -y nginx mariadb-server php8.1 php8.1-fpm php8.1-mysql php8.1-xml php8.1-curl php8.1-zip php8.1-gd php8.1-mbstring

# Configure Nginx: copy our config file and enable it
sudo cp nginx.conf /etc/nginx/sites-available/moodle
sudo ln -sf /etc/nginx/sites-available/moodle /etc/nginx/sites-enabled/moodle
sudo systemctl restart nginx

# Configure PHP-FPM
sudo cp php.ini /etc/php/8.1/fpm/php.ini
sudo systemctl restart php8.1-fpm

# Set file permissions for Moodle
sudo chown -R www-data:www-data /var/www/html/moodle
sudo chmod -R 775 /var/www/html/moodle

echo "Server setup complete!"
