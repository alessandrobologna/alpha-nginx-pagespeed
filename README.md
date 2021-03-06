# PrimeTime Pragmatic Nginx Build + Pagespeed

A build of nginx that better resembles a build for front end web services.

## Docker Run

	docker run -it cook/ngx_pagespeed
	
## Module versions in latest build

- nginx - 1.7.12
- pagespeed - 1.9.32.3
- nginx-dav-ext-module - 0.0.3
- echo-nginx-modeul - 0.57
- ngx_http_auth_pam_module - 1.4
- nginx-upstream-fair - master
- ngx_http_substitutions_filter_module - 0.6.4

## Default configuration

    ./configure --with-cc-opt='-g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -D_FORTIFY_SOURCE=2' \
        --with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro' \
        --sbin-path=/usr/sbin/nginx \
        --prefix=/usr/share/nginx \
        --conf-path=/etc/nginx/nginx.conf \
        --http-log-path=/var/log/nginx/access.log \
        --error-log-path=/var/log/nginx/error.log \
        --lock-path=/var/lock/nginx.lock \
        --pid-path=/run/nginx.pid \
        --http-client-body-temp-path=/var/lib/nginx/body \
        --http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
        --http-proxy-temp-path=/var/lib/nginx/proxy \
        --http-scgi-temp-path=/var/lib/nginx/scgi \
        --http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
        --with-debug \
        --with-pcre-jit \
        --with-ipv6 \
        --with-http_ssl_module \
        --with-http_stub_status_module \
        --with-http_realip_module \
        --with-http_auth_request_module \
        --with-http_addition_module \
        --with-http_dav_module \
        --with-http_geoip_module \
        --with-http_gzip_static_module \
        --with-http_image_filter_module \
        --with-http_spdy_module \
        --with-http_sub_module \
        --with-http_xslt_module \
        --with-mail \
        --with-mail_ssl_module \
        --add-module=/tmp/ngx_http_auth_pam_module-1.4 \
        --add-module=/tmp/nginx-dav-ext-module-0.0.3 \
        --add-module=/tmp/echo-nginx-module-0.57 \
        --add-module=/tmp/nginx-upstream-fair-master \
        --add-module=/tmp/ngx_http_substitutions_filter_module-0.6.4 \
        --add-module=/tmp/ngx_pagespeed-1.9.32.3-beta
