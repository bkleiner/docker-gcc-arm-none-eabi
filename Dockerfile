FROM ubuntu:18.10

RUN apt-get update && apt-get upgrade -y && \
  apt-get install -y build-essential git bzip2 wget curl jq && \
  apt-get clean 

ENV VERSION_SHORT 7-2018q2
ENV VERSION_LONG 7-2018-q2-update

RUN mkdir /cross && cd /cross && wget -qO- "https://developer.arm.com/-/media/Files/downloads/gnu-rm/$VERSION_SHORT/gcc-arm-none-eabi-$VERSION_LONG-linux.tar.bz2" | tar -xj

ENV PATH "/cross/gcc-arm-none-eabi-$VERSION_LONG/bin:$PATH"