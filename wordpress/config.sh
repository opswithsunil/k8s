#!/bin/bash

kubectl create configmap cm \
--from-literal=WORDPRESS_DB_HOST=test-database.c7rh2cksjiyp.ap-south-1.rds.amazonaws.com:3306 \
--from-literal=WORDPRESS_DB_NAME=testdb