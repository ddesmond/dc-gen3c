#!/bin/bash


mkdir -p /opt/gen3c/checkpoints/Gen3C-Cosmos-7B/
aria2c -d /opt/gen3c/checkpoints/Gen3C-Cosmos-7B/ \
https://huggingface.co/nvidia/GEN3C-Cosmos-7B/resolve/main/model.pt \
-o model.pt &

mkdir -p /opt/gen3c/checkpoints/google-t5/t5-11b
aria2c -d /opt/gen3c/checkpoints/google-t5/t5-11b \
https://huggingface.co/google-t5/t5-11b/resolve/main/pytorch_model.bin -o pytorch_model.bin &
cd /opt/gen3c/checkpoints/google-t5/t5-11b
wget https://huggingface.co/google-t5/t5-11b/resolve/main/config.json
wget https://huggingface.co/google-t5/t5-11b/resolve/main/spiece.model
wget https://huggingface.co/google-t5/t5-11b/resolve/main/tokenizer.json

mkdir -p /opt/gen3c/checkpoints/Cosmos-Tokenize1-CV8x8x8-720p

aria2c -d /opt/gen3c/checkpoints/Cosmos-Tokenize1-CV8x8x8-720p \
https://huggingface.co/nvidia/Cosmos-Tokenize1-CV8x8x8-720p/resolve/main/mean_std.pt \
-o mean_std.pt &