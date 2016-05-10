#!/bin/bash

#1.安装homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#2.安装nginx
brew install nginx

#3.配置nginx
cp -r conf.d /usr/local/etc/nginx
cp nginx.conf /usr/local/etc/nginx

#4.配置hosts文件
echo "127.0.0.1	localhost.lc" >> /etc/hosts
echo "127.0.0.1	testing.lc" >> /etc/hosts

#5.安装php
cp php-fpm.conf /private/etc/

#6.安装mysql
brew install mysql

#7.复制代码
mkdir /wwwroot
cp -r localhost /wwwroot
curl -i "localhost.lc"