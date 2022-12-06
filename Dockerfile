# we'll using ubuntu 16
FROM ubuntu:16.04

# create our working directory
RUN mkdir app

# update and install some packages
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y g++-multilib wget git

# install sampctl
RUN wget https://github.com/Southclaws/sampctl/releases/download/1.11.0/sampctl_1.11.0_linux_amd64.deb
RUN dpkg -i sampctl_1.11.0_linux_amd64.deb 
RUN rm sampctl_1.11.0_linux_amd64.deb

# using our working directory
WORKDIR /app

# creating an entrypoint
ENTRYPOINT ["/bin/bash"]
