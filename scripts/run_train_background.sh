#!/bin/bash

# 后台训练脚本 - 在后台运行训练并保存日志

# 设置必要的环境变量
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH
export CUDA_VISIBLE_DEVICES=0

# 创建日志目录
mkdir -p logs

# 获取当前时间戳
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
LOG_FILE="logs/train_${TIMESTAMP}.log"

echo "================================"
echo "在后台启动训练"
echo "日志文件: $LOG_FILE"
echo "================================"
echo "查看日志: tail -f $LOG_FILE"
echo "停止训练: pkill -f train.py"
echo "================================"

# 在后台运行训练，输出重定向到日志文件
nohup python scripts/train.py > "$LOG_FILE" 2>&1 &

# 获取进程ID
PID=$!
echo "训练进程ID: $PID"
echo $PID > logs/train.pid

echo "训练已在后台启动！"
