FROM ubuntu:xenial
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:cwchien/gradle
RUN apt-get update && \
    apt-get install -y git \
                       ssh \
                       tar \
                       gzip \
                       ca-certificates \
                       openjdk-8-jdk \
                       gradle \
                       python-pip \
                       zlib1g-dev \
                       libbz2-dev \
                       libreadline-dev \
                       libssl-dev \
                       libsqlite3-dev
RUN pip install cookiecutter tox
RUN git config --global user.email "<>" && git config --global user.name "Team 5499 Testing Image"