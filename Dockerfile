FROM debian:stretch-20190910
MAINTAINER ezio ezio_zhang@outlook.com

RUN apt-get update -y

RUN apt-get install -y \
binfmt-support \
debootstrap \
dosfstools \
dpkg-dev \
gettext-base \
git \
mtools \
parted \
python3 \
qemu                \
qemu-user-static \
reprepro \
sudo \
locales \
vim

RUN dpkg-reconfigure locales && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8;


RUN adduser --disabled-password --gecos '' deve && \
  usermod -aG sudo deve && \
  echo "deve ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /home/deve/
USER deve
ENV HOME /home/deve
ENV LANG en_US.UTF-8
RUN mkdir /home/deve/isar
