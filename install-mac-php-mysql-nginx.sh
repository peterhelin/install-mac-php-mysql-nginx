#!/bin/bash

#1.安装homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#2.安装nginx
brew install nginx

#3.配置nginx
sudo cp -r conf.d /usr/local/etc/nginx
sudo cp nginx.conf /usr/local/etc/nginx
sudo mkdir -p /var/log/nginx
sudo touch /var/log/nginx/localhost.log

#4.配置hosts文件
sudo echo "127.0.0.1	localhost.lc" >> /etc/hosts
sudo echo "127.0.0.1	testing.lc" >> /etc/hosts

#5.安装php
sudo cp php-fpm.conf /private/etc/

#6.安装mysql
brew install mysql

#7.复制代码
sudo mkdir /wwwroot
sudo cp -r localhost /wwwroot
sudo chmod -R 777 wwwroot

#8.开启服务
sudo nginx
sudo php-fpm

curl -i "localhost.lc"