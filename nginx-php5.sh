#!/usr/bin/env bash
echo "Provisioning NGINX and PHP5..."

sudo apt-get update -q

echo "Installing Git"
    apt-get install git -y > /dev/null
    
echo "Installing Nginx"
    apt-get install nginx -y > /dev/null
	
echo "Updating PHP repository"
    apt-get install python-software-properties build-essential -y > /dev/null
    add-apt-repository ppa:ondrej/php5 -y > /dev/null
    apt-get update > /dev/null

echo "Installing PHP"
    apt-get install php5-common php5-dev php5-cli php5-fpm -y > /dev/null
    
    echo "Installing PHP extensions"
    apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y > /dev/null

echo "Removing Default NGINX config"
	sudo rm /etc/nginx/sites-available/default

echo "Creating NGINX config"
    cp /var/www/_vagrant/Config/Nginx/default /etc/nginx/sites-available/nginx_vhost > /dev/null
    ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/ 
    service nginx restart > /dev/null

sudo service nginx restart

sudo service php5-fpm restart
