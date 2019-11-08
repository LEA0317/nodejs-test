FROM nvidia/cuda:10.1-devel-ubuntu18.04

MAINTAINER Toshihiro KONDA

RUN apt-get update && \
    apt install --yes vim \
                      nodejs

ENV USER test
ENV HOME /home/${USER}
ENV SHELL /bin/bash

RUN useradd -m ${USER}
RUN gpasswd -a ${USER} sudo

USER ${USER}
WORKDIR ${HOME}

COPY node.tar.gz /home/${USER}
COPY run_server.sh /home/${USER}

EXPOSE 8080