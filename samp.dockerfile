# we'll using ubuntu 16
FROM ubuntu:16.04

# create our working directory
RUN mkdir app

# install & update packages
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y g++-multilib

# install sampctl
RUN wget https://github.com/Southclaws/sampctl/releases/download/1.10.0/sampctl_1.10.0_linux_amd64.deb
RUN dpkg -i sampctl_1.10.0_linux_amd64.deb 
RUN rm sampctl_1.10.0_linux_amd64.deb

# using our working directory
WORKDIR /app

# creating an entrypoint
ENTRYPOINT ["/bin/bash"]