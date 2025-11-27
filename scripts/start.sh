#!/bin/bash

echo "Deploying static website..."

WEBROOT="/var/www/html"
SOURCE="/home/ec2-user/myapp"

sudo rm -rf $WEBROOT/*
sudo cp -r $SOURCE/* $WEBROOT/
sudo chmod -R 755 $WEBROOT
sudo systemctl restart httpd

echo "Deployment completed!"
