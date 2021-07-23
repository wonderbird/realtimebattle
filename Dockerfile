# GCC support can be specified at major, minor, or micro version
# (e.g. 8, 8.2 or 8.2.0).
# See https://hub.docker.com/r/library/gcc/ for all supported GCC
# tags from Docker Hub.
# See https://docs.docker.com/samples/library/gcc/ for more on how to use this image
#FROM gcc:latest
FROM debian:latest

RUN apt-get -y update && \
    apt-get -y --force-yes install build-essential default-jdk gawk pkg-config libgtk2.0-dev

# These commands copy your files into the specified directory in the image
# and set that as the working location
COPY . /usr/src/realtimebattle
WORKDIR /usr/src/realtimebattle

# This command compiles your app using GCC, adjust for your source code
RUN ./configure && \
    make && \
    make check

LABEL Name=rtb-build-agent Version=0.0.1
