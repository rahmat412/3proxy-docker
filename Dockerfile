FROM ubuntu:22.04

RUN apt-get update && apt-get install -y 3proxy && rm -rf /var/lib/apt/lists/*

COPY 3proxy.cfg /etc/3proxy.cfg

EXPOSE 3128
EXPOSE 1080

CMD ["3proxy", "/etc/3proxy.cfg"]
