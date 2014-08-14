#!/bin/bash
rm -f Archive.zip
zip -r Archive.zip *
scp Archive.zip moriarty@alexmoriarty.com:/home/content/48/10403148/html/sites/alavell/glitchwizard.com
ssh moriarty@alexmoriarty.com 'cd /home/content/48/10403148/html/sites/alavell/glitchwizard.com;unzip -o Archive.zip;rm Archive.zip'
rm Archive.zip
