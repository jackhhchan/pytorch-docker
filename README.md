# pytorch-docker
Use this dockerfile to build a pytorch docker development container!

#### current version:
builds docker container installed with miniconda and a 'pytorch' environment set up.

pytorch env:
- python 3.7.4
- pytorch 1.4
- cudatoolkit 10.1
- jupyter lab

jupyter lab extensions (install.sh):
- variable inspector
- table of contents


#### build 
`docker build -t docker-image:latest .`

#### run
e.g.:

```docker run --gpus all -it -p 8888:8888 docker-image:latest```

note: default port is 8888 for jupyterlab.

#### pull from repo:
`docker pull jackhhchan/pytorch:1.4-cuda-10.1-py3-jupyter`
