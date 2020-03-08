#### Custom Pytorch + Jupyterlab + labextensions Image ####


FROM nvidia/cuda:latest

WORKDIR /root/workspace

RUN apt update -y && apt upgrade -y

RUN apt install -y curl

RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda

# install Miniconda, -b stands for batch mode assumes license agreement.
# https://conda.io/projects/conda/en/latest/user-guide/install/macos.html#install-macos-silent
RUN bash Miniconda3-latest-Linux-x86_64.sh -b
ENV PATH="/root/miniconda3/bin:${PATH}"

RUN conda --version \
    && conda init \
    && conda update conda

# set up conda pytorch environment
COPY environment.yml .
RUN conda env create -f environment.yml

# set conda's default env to pytorch (can't use conda activate pytorch)
RUN echo "conda activate pytorch" | tee -a /root/.bashrc

# jupyterlab extensions
## node required for 
RUN apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt -y install nodejs

## install extensions script when docker run image the first time.
COPY install.bash .
ENTRYPOINT echo "[IMPORTANT] Please run 'bash install.bash' to install jupyter extensions." \
            # && /bin/bash install.bash \
            && /bin/bash

# run this when starting container
CMD ["/bin/bash"]

