FROM lewispeckover/base:3.5
ENTRYPOINT ["/entrypoint.sh"]
COPY entrypoint.sh /
COPY ./hitch/pkg/hitch/ /
RUN apk add --no-cache libev
