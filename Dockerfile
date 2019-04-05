FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install python3.7-dev cmake gcc qtdeclarative5-dev cmake
RUN pip3 install cmake

WORKDIR /tmp
RUN wget -c https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.gz
RUN tar -xvf boost_1_69_0.tar.gz
WORKDIR /tmp/boost_1_69_0
RUN ./bootstrap.sh --with-python=/usr/bin/python3.7 --prefix=/opt/boost_1_69_0
RUN ./b2 install -j`grep -c '^processor' /proc/cpuinfo`


