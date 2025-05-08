# fluxgym_guide

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
