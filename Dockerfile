FROM ubuntu:15.10
MAINTAINER Jakob Jarosch <dev@jakobjarosch.de>

RUN apt-get update && apt-get install -y openjdk-8-jdk git make wget unzip

RUN wget http://www.eu.apache.org/dist/ant/binaries/apache-ant-1.9.6-bin.zip
RUN unzip apache-ant-1.9.6-bin.zip
ENV PATH=/apache-ant-1.9.6/bin:$PATH

RUN git clone --depth 1 https://github.com/gwtproject/tools.git /gwt-tools
ENV GWT_TOOLS=/gwt-tools

COPY Makefile /Makefile
