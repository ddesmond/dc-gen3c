mkdir -p /opt/gen3c/checkpoints/Gen3C-Cosmos-7B/


aria2c -d /opt/gen3c/checkpoints/Gen3C-Cosmos-7B/ \
https://huggingface.co/nvidia/GEN3C-Cosmos-7B/resolve/main/model.pt \
-o model.pt &