FROM ubuntu:16.04

RUN mkdir app
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y g++-multilib

WORKDIR /app
ENTRYPOINT ["/bin/bash"]