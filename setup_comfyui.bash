#Downloads the models

## PULID model
mkdir -p models/pulid
wget -P models/pulid https://huggingface.co/guozinan/PuLID/resolve/main/pulid_flux_v0.9.1.safetensors
## Eva clips
wget -P models/clip https://huggingface.co/QuanSun/EVA-CLIP/resolve/main/EVA02_CLIP_L_336_psz14_s6B.pt 

## Antelopev2
mkdir -p models/insightface/models
wget -P models/insightface/models https://huggingface.co/MonsterMMORPG/tools/resolve/main/antelopev2.zip
unzip models/insightface/models/antelopev2.zip -d models/insightface/models
#facexlib
mkdir -p models/facexlib
wget -P models/facexlib https://github.com/xinntao/facexlib/releases/download/v0.2.0/parsing_bisenet.pth
wget -P models/facexlib https://github.com/xinntao/facexlib/releases/download/v0.2.2/parsing_parsenet.pth
wget -P models/facexlib https://github.com/xinntao/facexlib/releases/download/v0.1.0/detection_Resnet50_Final.pth

# Contrlnet
wget -P models/controlnet https://huggingface.co/Shakker-Labs/FLUX.1-dev-ControlNet-Union-Pro/resolve/main/diffusion_pytorch_model.safetensors
mv models/controlnet/diffusion_pytorch_model.safetensors models/controlnet/FLUX.1-dev-ControlNet-Union-Pro.safetensors

# Upscale
wget -P models/upscale_models https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/4x_NMKD-Siax_200k.pth

# Lora
wget -P models/loras https://huggingface.co/falanaja/Amateur-Photography/resolve/main/amateurphoto-v6-forcu.safetensors




## Install nodes
