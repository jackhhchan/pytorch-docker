# pytorch-docker
pytorch docker file set up with jupyter lab and extensions.

#### current version:
builds docker container with miniconda with pytorch env setup.

pytorch env:
- python 3.7.4
- pytorch 1.4
- cudatoolkit 10.1
- jupyter lab

jupyter lab extensions (install.sh):
- variable inspector
- table of contents


#### build and run:
`docker build -t docker-image:latest .`

`docker run --gpus all -it -p 8888:8888 docker-image:latest`

default port 8888 for jupyterlab.

#### pull from repo:
`docker pull jackhhchan/pytorch:1.4-cuda-10.1-py3-jupyter
