# Environment for development and manual test
#
# This container provides you with an Ubuntu based development environment. The container
# includes a HTML5 VNC interface so that you can run the realtimebattle GUI app from
# your browser.
#
# USAGE
# -----
#
# docker build -t rtb-dev:latest .
# docker run -p 6080:80 -v $PWD:/root/realtimebattle -v /dev/shm:/dev/shm rtb-dev:latest
#
# Then connect your browser to http://localhost:6080
#
# CREDITS
# -------
#
# Thanks to Doro Wu for providing the base image [fcwu / docker-ubuntu-vnc-desktop](https://github.com/fcwu/docker-ubuntu-vnc-desktop)
#
FROM dorowu/ubuntu-desktop-lxde-vnc:latest

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential default-jdk gawk git pkg-config libgtk2.0-dev

LABEL Name=rtb-dev Version=0.0.1
