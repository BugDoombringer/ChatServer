#!/bin/bash

set -e  # 确保任何命令失败时退出
set -x  # 开启调试输出（可选）

BUILD_DIR="$(pwd)/build"

# 检查并创建 build 目录
if [ ! -d "$BUILD_DIR" ]; then
    mkdir "$BUILD_DIR"
fi

# 清空 build 目录
rm -rf "$BUILD_DIR"/*

cd "$BUILD_DIR" && cmake .. && make
