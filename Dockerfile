FROM alpine:latest

LABEL MAINTAINER iedred7584

RUN apk add tzdata && \
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
apk del tzdata && \
rm -rf /var/cache/apk/*
