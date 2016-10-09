FROM alpine:latest

MAINTAINER zhangpeihao <zhangpeihao@gmail.com>

RUN apk --update add nginx

ADD index.html /usr/share/nginx/html/index.html

RUN mkdir /run/nginx
RUN mkdir -p /var/log/nginx || echo "existed?"
RUN chown nginx:root /var/log/nginx
RUN mkdir -p /var/lib/nginx/tmp || echo "existed?"
RUN chown nginx:root /var/lib/nginx/tmp

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
