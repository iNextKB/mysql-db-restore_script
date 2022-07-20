#!/bin/bash

read -p "Please type username given by admin: " mysqluser
read  -s -p "Please type password given by admin: " mysqlpass
echo
read -p "which should be the NEW DB NAME that you wish to create on this time? " newdbname
ls -l
read -p "Please Enter your sql file name: " sqlfile
mysql  -u$mysqluser -p"$mysqlpass" -e "create database $newdbname";
echo
mysql  -u$mysqluser -p"$mysqlpass" -e "show databases";
mysql  -u$mysqluser -p"$mysqlpass" $newdbname < $sqlfile
echo
