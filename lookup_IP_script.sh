#!\bin\bash
curl -s http://ipinfo.io/$1 | grep country | awk -F: '{print $2}'

https://docs.google.com/document/d/1KrefNEDshrCcKyO1gouyVwI3P9Nufe9vQKVZvKk3f0Q/edit?usp=sharing
