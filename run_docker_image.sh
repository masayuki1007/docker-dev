#!/bin/bash

# run docker image
# share data directory with host and container
# host and container machine port forwarding
nvidia-docker run -it -v /home/hakuhodo/Desktop/docker-env/data/:/home/ubuntu/data --shm-size 8G -p 8888:8888 nvidia-ubuntu-ml-dev zsh
