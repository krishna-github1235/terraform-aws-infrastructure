#!/bin/bash

yum update -y

yum install -y httpd

systemctl enable httpd

systemctl start httpd

echo "<h1>Terraform EC2 created using GitHub Actions</h1>" > /var/www/html/index.html