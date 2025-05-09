pip install -U "huggingface_hub[cli]"

huggingface-cli login

huggingface-cli upload Faishme/Lora_datasets . --repo-type=dataset

# Download a file from Hugging Face Hub
export HF_TOKEN=hf_your_token_here
wget --header="Authorization: Bearer $HF_TOKEN" \
  https://huggingface.co/datasets/Faishme/Lora_datasets/resolve/main/ol1v1444/ol1v1444_processface_0_0.png
