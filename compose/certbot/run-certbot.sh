#!/bin/bash

letsencrypt certonly --webroot -w /var/www/public -d "$CN" -d "$WWWCN" --agree-tos --email "$EMAIL" --non-interactive --text

cp /etc/letsencrypt/live/sticker.pub/cert.pem /var/certs/cert.pem
cp /etc/letsencrypt/live/sticker.pub/chain.pem /var/certs/chain.pem
cp /etc/letsencrypt/live/sticker.pub/fullchain.pem /var/certs/fullchain.pem
cp /etc/letsencrypt/live/sticker.pub/privkey.pem /var/certs/privkey.pem

#letsencrypt certonly --webroot -w /var/www/public -d "sticker.pub" -d "www.sticker.pub" --agree-tos --email "omelchenkovitaly@gmail.com" --non-interactive --text --dry-run
