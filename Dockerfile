FROM alpine:latest

MAINTAINER zhangpeihao <zhangpeihao@gmail.com>

RUN apk --update add nginx

ADD index.html /usr/share/nginx/html/index.html

ADD nginx.conf /etc/nginx/nginx.conf

# RUN rm -rf /var/nginx || echo "not existed?"

# RUN mkdir /run/nginx && mkdir -p /data/nginx && ln -s /data/nginx /var/nginx
# RUN mkdir -p /var/log/nginx || echo "existed?"
# RUN chown nginx:root /var/log/nginx
# RUN mkdir -p /var/lib/nginx/tmp || echo "existed?"
# RUN chown nginx:root /var/lib/nginx/tmp

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
