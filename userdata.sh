#!/bin/bash
hostnamectl set-hostname ${myserver}
dnf update -y
dnf install nginx -y
systemctl enable nginx
systemctl start nginx

# Create a simple landing page
echo "<h1>Welcome to ${myserver}</h1><p>Provisioned by Terraform</p>" > /usr/share/nginx/html/index.html
