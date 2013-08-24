FROM ubuntu
MAINTAINER Spike Grobstein <me@spike.cx>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# begin meat of program

RUN apt-get install -y rubygems openjdk-7-jre-headless openjdk-7-jre-lib
RUN gem install mcwrapper --pre

RUN useradd -s /bin/bash -m -c "Minecraft Server" minecraft
USER minecraft

ADD mcwrapper.conf /home/minecraft/mcwrapper.conf
ADD minecraft_server.jar /home/minecraft/minecraft_server.jar

EXPOSE 25565

WORKDIR /home/minecraft
ENTRYPOINT ["/usr/local/bin/mcwrapper"]
CMD ["help"]
