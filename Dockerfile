FROM alpine:3.12
RUN apk add --update nginx \
 && rm -rf /var/cache/apk/*
RUN mkdir -p /usr/share/nginx/html/ \
 && echo 'This image is created by kaniko' > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
