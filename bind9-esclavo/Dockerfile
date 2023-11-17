FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9 bind9-doc bind9-utils bash nano iputils-ping net-tools gcc curl nmap dnsutils

COPY named.conf.local /etc/bind/named.conf.local
COPY db.javi.com /etc/bind/db.javi.com
COPY db.3.45.23.56.in-addr.arpa /etc/bind/db.3.45.23.56.in-addr.arpa


EXPOSE 53/udp

CMD ["named", "-g"]

