#!/bin/bash

# 图片序列查看器启动脚本

echo "🎬 启动图片序列查看器..."
echo ""
echo "正在启动本地 HTTP 服务器..."
echo "服务器地址: http://localhost:8000"
echo ""
echo "按 Ctrl+C 停止服务器"
echo "----------------------------------------"
echo ""

# 检测并启动合适的 HTTP 服务器
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m http.server 8000
elif command -v php &> /dev/null; then
    php -S localhost:8000
else
    echo "错误: 未找到 Python 或 PHP"
    echo "请安装 Python 3 或使用其他方式启动服务器"
    exit 1
fi

