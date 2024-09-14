FROM nvidia/cuda:12.1.0-cudnn8-runtime-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

COPY ./requirements.txt /tmp/requirements.txt
COPY ./example.ipynb /home/notebooks/example.ipynb

RUN apt-get update && apt-get install -y \
    python3.11 \
    python3.11-dev \
    python3-pip \
    sudo \
    build-essential \
    cmake \
    graphviz \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1

RUN pip install --upgrade pip
RUN pip install jupyterlab notebook
RUN pip install torch torchvision torchaudio \
    --index-url https://download.pytorch.org/whl/cu121
RUN pip install -r /tmp/requirements.txt
RUN rm /NGC-DL-CONTAINER-LICENSE /cuda-keyring_1.0-1_all.deb

EXPOSE 8888

WORKDIR /home
