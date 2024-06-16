@echo off
docker run -d -p 53:53/udp --name dns dns_server:latest
timeout 10 > nul