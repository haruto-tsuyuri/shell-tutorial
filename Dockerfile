FROM ubuntu:latest
WORKDIR /usr/app
COPY main.sh /usr/app

RUN chmod +x main.sh
RUN apt update
