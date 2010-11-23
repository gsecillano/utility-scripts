#!/usr/bin/sh

echo 'drop database whohar_production' | mysql -u root
echo 'create database whohar_production' | mysql -u root

mysql -u root whohar_production < /d/prod.sql
