#!/bin/bash
cd /opt/gen3c/gui
CUDA_HOME=$CONDA_PREFIX fastapi dev --no-reload ./api/server.py --host 0.0.0.0
