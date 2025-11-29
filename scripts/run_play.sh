#!/bin/bash

# Play脚本 - 可视化已训练的B1+Z1机器人策略

export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH
export CUDA_VISIBLE_DEVICES=0

python scripts/play.py

