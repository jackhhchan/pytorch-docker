#!/bin/bash
pip install ipywidgets
jupyter nbextension enable --py widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install @jupyterlab/toc
jupyter labextension install @lckr/jupyterlab_variableinspector
jupyter nbextension list
jupyter labextension list
echo "To start table of contents with jupyter lab run jupyterlab --watch"