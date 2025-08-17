#!/bin/bash

cd /opt/gen3c
source ~/.bashrc

conda activate cosmos-predict1
conda install -c conda-forge libstdcxx-ng
cd gui
pip install fastapi
pip install -r ./requirements.txt

cd /opt/gen3c/gui
CUDA_HOME=$CONDA_PREFIX fastapi dev --no-reload ./api/server.py --host 0.0.0.0
