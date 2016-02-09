FROM alpine:3.3

RUN apk update && \
    apk upgrade && \
    apk --update add haproxy && \
    rm -rf /var/cache/apk/*

COPY ./haproxy.cfg /etc/haproxy/haproxy.cfg

CMD ["haproxy", "-db", "-f", "/etc/haproxy/haproxy.cfg"]
