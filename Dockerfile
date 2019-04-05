FROM ubuntu:18.10

RUN apt-get update
RUN apt-get -y install python3-pip gcc python3-dev libboost-all-dev qtdeclarative5-dev cmake
