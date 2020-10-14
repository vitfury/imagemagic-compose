#!/bin/bash

mkdir -m 744 /var/www/letsencrypt
letsencrypt certonly --webroot -w /var/www/letsencrypt -d "$CN" --agree-tos --email "$EMAIL" --non-interactive --text

cp /etc/letsencrypt/archive/"$CN"/cert1.pem /var/certs/cert1.pem
cp /etc/letsencrypt/archive/"$CN"/privkey1.pem /var/certs/privkey1.pem

#letsencrypt certonly --webroot -w /var/www/letsencrypt -d "sticker.pub" --agree-tos --email "omelchenkovitaly@gmail.com" --non-interactive --text --dry-run
