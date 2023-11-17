FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9 bind9-doc bind9-utils bash nano iputils-ping net-tools gcc curl nmap dnsutils

COPY named.conf.local /etc/bind/named.conf.local
COPY db.javi.com /etc/bind/db.javi.com
COPY reverse /etc/bind/reverse

EXPOSE 53/udp

CMD ["named", "-g"]

