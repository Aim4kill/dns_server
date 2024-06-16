@echo off
docker build -t dns_server .
timeout 10 > nul