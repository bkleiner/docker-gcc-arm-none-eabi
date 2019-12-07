FROM ubuntu:18.10

ENV VERSION_SHORT 7-2017q4
ENV VERSION_LONG 7-2018-q2-update

RUN apt update && apt upgrade -y && \
  apt install -y build-essential git bzip2 wget && \
  apt clean && mkdir \
  wget -qO- https://developer.arm.com/-/media/Files/downloads/gnu-rm/$VERSION_SHORT/gcc-arm-none-eabi-$VERSION_LONG-linux.tar.bz2 | tar -C /opt -xj

ENV PATH "/opt/gcc-arm-none-eabi-$VERSION_LONG/bin:$PATH"