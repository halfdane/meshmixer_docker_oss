FROM ubuntu:14.04
MAINTAINER github/halfdane

RUN apt-get update && apt-get install -y \
    mesa-utils \
    xserver-xorg-video-all \
    wget \
    gdebi xterm unzip && \
  mkdir -p ${HOME}/Documents && \
  cd ${HOME}/Documents && \
  wget https://meshmixer.s3.amazonaws.com/meshmixer.zip && \
  unzip meshmixer.zip && \
  rm meshmixer.zip && \
  mkdir -p ${HOME}/Documents/bintmp && \
  touch ${HOME}/Documents/bintmp/zenity ${HOME}/Documents/bintmp/notify-send && \
  chmod a+x ${HOME}/Documents/bintmp/zenity ${HOME}/Documents/bintmp/notify-send && \
  oldpath=$PATH && \
  export PATH=${HOME}/Documents/bintmp:$PATH && \
  wget https://s3.amazonaws.com/autodesk-meshmixer/meshmixer/amd64/meshmixer_2.9_amd64.deb && \
  gdebi --n meshmixer_2.9_amd64.deb && \
  rm meshmixer_2.9_amd64.deb && \
  PATH=${oldpath}

CMD /usr/bin/meshmixer
