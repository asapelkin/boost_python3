FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install python3-pip gcc python3-dev libboost-all-dev qtdeclarative5-dev
RUN pip3 install --upgrade cmake
