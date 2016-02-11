FROM ubuntu:15.10
MAINTAINER Jakob Jarosch <dev@jakobjarosch.de>

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk \
                       ant \
                       git

RUN git clone --depth 1 https://github.com/gwtproject/tools.git /gwt-tools # 2016-02-11
ENV GWT_TOOLS=/gwt-tools

COPY Makefile /Makefile
