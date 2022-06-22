FROM ubuntu:20.04

# Install any needed packages specified in requirements.txt
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get upgrade -y && \
    apt-get install -y \
      build-essential \
      git \
      bzip2 \
      wget \
      openocd \
      picocom

RUN cd /opt && \ 
    wget "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2" && \
    tar -jxf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 && \
    rm gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 && \
    export PATH="/opt/gcc-arm-none-eabi-10.3-2021.10/bin:$PATH"

WORKDIR /ciaa
RUN git clone https://github.com/epernia/firmware_v3  .

ENV PATH "/opt/gcc-arm-none-eabi-10.3-2021.10/bin:$PATH"
WORKDIR /workspace