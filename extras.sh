#!/bin/bash

cd /opt/gen3c

conda activate cosmos-predict1
cd gui
pip install fastapi
pip install -r ./requirements.txt