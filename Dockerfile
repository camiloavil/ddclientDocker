FROM alpine:3.17
RUN apk update && apk add --no-cache bash
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk update && apk add --no-cache ddclient
CMD bash -c "while true; do sleep 1; done"