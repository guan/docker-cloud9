FROM node:0.12
MAINTAINER Masato Shimizu <ma6ato@gmail.com>

RUN git clone https://github.com/c9/core.git /cloud9 && \
    cd /cloud9 && ./scripts/install-sdk.sh

WORKDIR /workspace
