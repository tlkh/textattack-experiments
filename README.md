# textattack-experiments

Experiments with Text Attack

## Setup

NGC TensorFlow container `nvcr.io/nvidia/tensorflow:20.09-tf2-py3` is used and the some extra packages need to be installed:

```shell
pip install torch==1.7.0+cu110 torchvision==0.8.1+cu110 torchaudio===0.7.0 -f https://download.pytorch.org/whl/torch_stable.html

pip install textattack tensorflow_hub
```

## Running

```shell
bash run_attacks.sh > ./results/attack.log
```
