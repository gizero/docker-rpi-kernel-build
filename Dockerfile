FROM ubuntu

RUN apt-get update && apt-get install -y \
  bc \
  build-essential \
  git \
  libncurses5-dev \
&& rm -rf /var/lib/apt/lists/*

RUN git clone --depth=1 https://github.com/raspberrypi/tools ~/tools
RUN echo PATH=\$PATH:~/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin >> ~/.bashrc
