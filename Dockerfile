FROM ubuntu:latest

# expose dns port
EXPOSE 53/udp

# Install bind9 and dnsutils
RUN apt-get update
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils

# Copy the config files
COPY dns/ /etc/bind/

# Start the DNS server (systemcl won't work in docker container)
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]