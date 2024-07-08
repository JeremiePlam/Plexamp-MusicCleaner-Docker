FROM debian:stable-slim

RUN apt update && apt install -y libreplaygain1

VOLUME /config /music