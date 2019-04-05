FROM ubuntu:18.10

RUN apt-get update
RUN apt-get -y install python3.7-dev cmake libboost-all-dev gcc libboost-all-dev qtdeclarative5-dev cmake
