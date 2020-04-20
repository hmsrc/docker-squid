FROM alpine:3.11

MAINTAINER phil.ayres@consected.com

RUN apk update && apk add squid=4.10-r0 && apk add curl && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
