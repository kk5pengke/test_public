@echo off
chcp 65001 >nul
echo.
echo 🎬 启动图片序列查看器...
echo.
echo 正在启动本地 HTTP 服务器...
echo 服务器地址: http://localhost:8000
echo.
echo 按 Ctrl+C 停止服务器
echo ----------------------------------------
echo.

REM 检测并启动 Python 服务器
python --version >nul 2>&1
if %errorlevel% equ 0 (
    python -m http.server 8000
    goto :end
)

python3 --version >nul 2>&1
if %errorlevel% equ 0 (
    python3 -m http.server 8000
    goto :end
)

php --version >nul 2>&1
if %errorlevel% equ 0 (
    php -S localhost:8000
    goto :end
)

echo 错误: 未找到 Python 或 PHP
echo 请安装 Python 3 或使用其他方式启动服务器
pause

:end

