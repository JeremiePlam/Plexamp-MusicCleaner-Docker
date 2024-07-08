#FROM debian:stable-slim
FROM nginx:latest

#RUN apt update && apt install -y libreplaygain1

VOLUME /config /music