mkdir -p /opt/gen3c/checkpoints/Gen3C-Cosmos-7B/


aria2c -d /opt/gen3c/checkpoints/Gen3C-Cosmos-7B/ \
https://huggingface.co/nvidia/GEN3C-Cosmos-7B/resolve/main/model.pt \
-o model.pt &


mkdir -p /opt/gen3c/checkpoints/google-t5/t5-11b
cd /opt/gen3c/checkpoints/google-t5/t5-11b
wget https://huggingface.co/google-t5/t5-11b/resolve/main/pytorch_model.bin

#mkdir -p /opt/gen3c/checkpoints/Cosmos-Tokenize1-CV8x8x8-720
#cd
#https://huggingface.co/nvidia/Cosmos-Tokenize1-CV8x8x8-720p/resolve/main/mean_std.pt