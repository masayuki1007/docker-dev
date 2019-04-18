# base OS image
FROM ubuntu:18.04

LABEL maintainer="ubuntu-ml-dev"

# update
RUN apt update
RUN apt upgrade -y

# install utilities
RUN apt install -y sudo git zsh vim openssh-server wget gcc libatlas-base-dev apt-utils

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
RUN pip3 install pandas scipy numpy sklearn tqdm

# keras
RUN pip3 install keras tensorflow-gpu

# chainer
RUN pip3 install chainer

# PyTorch for cuda8
RUN pip3 install torchvision



LABEL maintainer="nvidia-docker"

# update
RUN apt update
RUN apt upgrade -y

# install utilities
RUN apt install -y sudo git zsh vim openssh-server wget gcc libatlas-base-dev apt-utils

# group:developer
RUN groupadd -g 1000 developer

# user:ubuntu, password:ubuntu
RUN useradd -g developer -G sudo -m -s /bin/bash ubuntu
RUN echo "ubuntu:ubuntu" | chpasswd

# for japanese lang
RUN apt install locales locales-all
RUN export LANG=en_US.UTF-8

# install python deeep learning libraries
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

# machine learning
RUN pip3 install pandas scipy numpy sklearn tqdm

# keras
RUN pip3 install keras tensorflow-gpu

# chainer
RUN pip3 install chainer

# PyTorch for cuda8
RUN pip3 install torchvision