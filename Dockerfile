FROM ubuntu:bionic
RUN apt-get update && \
    apt-get install -y git \
                       ssh \
                       tar \
                       gzip \
                       ca-certificates \
                       gradle \
                       python-pip
RUN pip install cookiecutter