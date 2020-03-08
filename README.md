# pytorch-docker
pytorch docker file set up with jupyter lab and extensions.


#### build and run:
`docker build -t jackhhchan/pytorch:1.4-cuda-10.1.py3 .`

`docker run --gpus all -it -p 8888:8888 jackhhchan/pytorch:1.4-cuda-10.1-py3`

default port 8888 for jupyterlab.
