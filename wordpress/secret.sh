#!/bin/bash

kubectl create secret generic secret \
--from-literal=WORDPRESS_DB_USER="sunil" \
--from-literal=WORDPRESS_DB_PASSWORD="Redhat123"