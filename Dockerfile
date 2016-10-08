FROM alpine:latest

MAINTAINER zhangpeihao <zhangpeihao@gmail.com>

RUN apk --update add nginx

RUN echo "<!doctype html><html><head><title>Hello world!</title></head><body><h1>Hello world!</h1></body></html>" > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
