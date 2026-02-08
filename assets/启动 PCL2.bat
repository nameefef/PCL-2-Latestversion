@echo off
chcp 65001 >nul
echo ============================================
echo        PCL2 Minecraft 启动器
echo ============================================
echo.

REM 检测 Java
if exist "Java\bin\java.exe" (
    echo [√] 检测到 Java 运行环境
    set JAVA_PATH=%CD%\Java\bin\java.exe
) else (
    echo [!] 未检测到 Java，请先安装 Java 21
    echo    下载地址: https://cdn.azul.com/zulu/bin/zulu21.38.21-ca-jdk21.0.5-win64.msi
    echo.
    set /p choice="是否继续启动 PCL2？(y/n): "
    if not "%choice%"=="y" exit /b 1
)

echo.
echo [√] 准备启动 PCL2...
echo.

REM 启动 PCL2
if exist "PCL2\PCL2.exe" (
    start "" "PCL2\PCL2.exe"
    echo [√] PCL2 已启动！
) else (
    echo [!] 错误: 未找到 PCL2\PCL2.exe
    echo    请确保已解压 PCL2 到正确目录
)

echo.
echo ============================================
echo 提示：如需配置 Java，点击 PCL2 设置 → Java
echo ============================================
