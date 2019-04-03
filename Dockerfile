FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install cmake gcc python3-dev libboost-all-dev  qtdeclarative5-dev
