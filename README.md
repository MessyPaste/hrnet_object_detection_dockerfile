# Dockerfile for HRnet(Object Detection） 
[Chinese中文](https://blog.csdn.net/weixin_42217661/article/details/101264215)
## Prerequisite
Install docker and nvidia docker software.Following:
https://docs.docker.com/install/linux/docker-ce/ubuntu/ and https://github.com/NVIDIA/nvidia-docker

Run "nvidia-smi" in docker . If you get the right messge, you can continue the following code.

## Clone this lab

    git clone https://github.com/LiuTodd/hrnet_object_detection_dockerfile.git

or git clone from lastest official site:

    git clone https://github.com/HRNet/HRNet-Object-Detection
    git clone https://github.com/cocodataset/cocoapi.git
    git clone https://github.com/NVIDIA/apex

## Build docker

Note:hrnet is the docker name

    docker build -t hrnet .

Run docker:

    nvidia-docker run -it -v $(pwd)/HRNet-Object-Detection:/code_current hrnet bash
If you want to change code for long time ,you can mount the code folder again using "-v" command. You can also mount data folder to train or test this code.
For example:

    nvidia-docker run -it -v $(pwd)/HRNet-Object-Detection:/code_current -v /data/:/data/ hrnet bash

