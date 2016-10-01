FROM alpine:latest
ENV UPDATED=20161001
RUN apk --update --no-cache upgrade && apk add --no-cache openssl && apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/testing hitch && mkdir -p /etc/hitch
COPY run.sh /
ENTRYPOINT ["/run.sh"]
