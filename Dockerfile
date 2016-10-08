FROM alpine:latest

MAINTAINER zhangpeihao <zhangpeihao@gmail.com>

RUN apk --update add nginx

ADD index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
