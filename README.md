# fluxgym_guide
Download the flux model and other models
```
wget -P models/unet https://huggingface.co/camenduru/FLUX.1-dev/resolve/refs%2Fpr%2F1/flux1-dev.sft
wget -P models/clip https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/clip_l.safetensors
wget -P models/clip https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors
wget -P models/vae https://huggingface.co/Madespace/vae/resolve/3b34e1aca3511e7f382ff8bb2dab0731c4f4b6cf/ae.sft
```
Lora Training steps:

Activate env: 
```
conda activate fluxgym
```
Upload the dataset inside fluxgym/dataset
Then go to the fluxgym/outputs
Copy the previous example
```
cp -r sample-am3l14/ <name of lora>
#Example: 
cp -r sample-am3l14/ m4nj4n
```
Go to the new folder: 
```
cd m4nj4n/
```
Replace the sample name to new name in each sample name instances
```
find . -type f -exec sed -i 's/am3l14/<name of lora>/g' {} +
#Example:
find . -type f -exec sed -i 's/am3l14/m4nj4n/g' {} +
```
Start the training
```
bash outputs/<name of lora>/train.sh
bash outputs/m4nj4n/train.sh
```
