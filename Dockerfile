FROM cook/nginx-pagespeed


COPY start /start
RUN chmod +x /start
VOLUME ["/etc/nginx/sites-enabled","/etc/nginx/ssl/alpha","/home/alpha","/var/cache/nginx","/var/ngx_pagespeed_cache","/var/log/nginx"]
WORKDIR /etc/nginx/
ENTRYPOINT ["/start"]

# Configure nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled /etc/nginx/sites-enabled