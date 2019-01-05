FROM ubuntu:xenial
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:cwchien/gradle
RUN apt-get update && \
    apt install --reinstall -y software-properties-common && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y git \
                       ssh \
                       tar \
                       gzip \
                       ca-certificates \
                       openjdk-11-jdk \
                       gradle \
                       python2.7 \
                       python-pip \
                       zlib1g-dev
RUN pip install cookiecutter \
                tox
RUN cd ~ && \
    wget https://github.com/wpilibsuite/allwpilib/releases/download/v2019.1.1/WPILib_Linux-2019.1.1.tar.gz && \
    mkdir frc2019 && \
    tar xf WPILib_Linux-2019.1.1.tar.gz -C ~/frc2019 && \
    cd frc2019/tools && \
    python ToolsUpdater.py && \
    cd ~
RUN git config --global user.name "Team 5499 Testing Image" && \
    git config --global user.email "<>"
