# base OS image
FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
LABEL maintainer="nvidia-ubuntu-ml-dev"

# update
RUN apt update
RUN apt upgrade -y

# install utilities
RUN apt install -y sudo git zsh openssh-server wget gcc libatlas-base-dev

# group:developer
RUN groupadd -g 1000 developer

# user:ubuntu, password:ubuntu
RUN useradd -g developer -G sudo -m -s /bin/bash ubuntu
RUN echo "ubuntu:ubuntu" | chpasswd

# for japanese lang
RUN apt install locales locales-all
RUN export LANG=en_US.UTF-8

# install python3
RUN apt install python3 python3-pip -y
RUN pip3 install ipython

# swich user ubuntu
USER ubuntu
WORKDIR /home/ubuntu/

# copy all files at Dockerfile level (.) to ubuntu home directory (./)
ADD . ./

# jupyter font setting
RUN mkdir .jupyter
RUN mkdir .jupyter/custom
RUN echo ".CodeMirror pre, .output pre { font-family: Ricty; font-size: 12pt; }" > .jupyter/custom/custom.css

# machine learning libraries
RUN pip3 install pandas numpy scipy sklearn tqdm

# keras
RUN pip3 install keras tensorflow-gpu

# chainer
RUN pip3 install chainer

# PyTorch for cuda8
RUN pip3 install torchvision
