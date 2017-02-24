FROM lewispeckover/base:3.5
ADD ./hitch/.abuild/*.pub /etc/apk/keys
RUN chmod 644 /etc/apk/keys/*.pub && mkdir -p /packages
ADD ./hitch/packages/x86_64/*.apk /packages/
RUN apk add --no-cache /packages/*.apk && rm -rf /packages
