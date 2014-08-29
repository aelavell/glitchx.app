#!/bin/bash
rm -f Archive.zip
zip -r Archive.zip *
scp Archive.zip root@107.170.87.159:/usr/share/nginx/www/
ssh root@107.170.87.159 'cd /usr/share/nginx/www/;unzip -o Archive.zip;rm Archive.zip'
rm Archive.zip
