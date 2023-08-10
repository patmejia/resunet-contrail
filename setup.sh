#!/bin/bash

# Create the environment
mamba create -n contrail python=3.10 -c conda-forge

# Find the path of the 'contrail' environment
CONTRAIL_ENV_PATH=$(conda info --envs | grep 'contrail' | awk '{print $1}')

# Activate the environment
conda activate $CONTRAIL_ENV_PATH

# Install dependencies
mamba install pytorch pytorch-cuda=11.8 -c pytorch -c nvidia
pip install segmentation-models-pytorch albumentations

# Instructions to deactivate
echo "To deactivate the environment when done, run: conda deactivate"
