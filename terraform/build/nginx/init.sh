#! /bin/bash
sudo yum update -y
sudo amazon-linux-extras install -y nginx1.12
sudo service nginx start