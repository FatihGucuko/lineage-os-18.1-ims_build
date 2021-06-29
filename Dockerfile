FROM ubuntu:20.04
WORKDIR /app
COPY . /app

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y bc bison build-essential ccache curl \ 
flex g++-multilib gcc-multilib git gnupg gperf imagemagick \
lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool \
libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 \
libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev \
default-jre

RUN apt-get install -y aptitude apt-utils
RUN apt-get update && apt-get upgrade -y


