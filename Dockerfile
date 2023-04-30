FROM alpine:3.17
# RUN apk add openrc --no-cache
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk update && apk add --no-cache ddclient
# CMD /bin/sh -c "while true; do sleep 2; done"
# CMD /bin/sh -c "while true; /usr/bin/ddclient -daemon 1>> /var/log/ddclient.log; do sleep 2; done"
# CMD /bin/sh -c "/usr/bin/ddclient; -daemon 3"
# CMD /bin/sh -c "/usr/bin/ddclient"
CMD ["/usr/bin/ddclient" , "daemon 2"]