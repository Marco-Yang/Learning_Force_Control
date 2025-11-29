#!/bin/bash

# 激活conda环境（在脚本外手动执行：conda activate LFC）
# Set library path for Isaac Gym
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH

# Set CUDA device
export CUDA_VISIBLE_DEVICES=0

# Run the test script
python scripts/test.py

