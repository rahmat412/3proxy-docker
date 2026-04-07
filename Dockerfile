FROM alpine:latest

RUN apk add --no-cache 3proxy

COPY 3proxy.cfg /etc/3proxy/3proxy.cfg

EXPOSE 3128
EXPOSE 1080

CMD ["3proxy", "/etc/3proxy/3proxy.cfg"]
