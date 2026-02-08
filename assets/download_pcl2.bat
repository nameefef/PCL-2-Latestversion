@echo off
chcp 65001 >nul
echo ============================================
echo      PCL2 启动器下载脚本
echo ============================================
echo.

REM 创建桌面文件夹
if not exist "%USERPROFILE%\Desktop\PCL2" mkdir "%USERPROFILE%\Desktop\PCL2"

echo [1/3] 正在下载 PCL2 (使用国内镜像源)...
echo.

REM 使用 FastGit 镜像源下载
powershell -Command "& {try {(New-Object System.Net.WebClient).DownloadFile('https://download.fastgit.org/Hex-Dragon/PCL2/releases/download/v2.8.3/PCL2-2.8.3.zip', '%USERPROFILE%\Desktop\PCL2\PCL2.zip'); Write-Host '下载成功' -ForegroundColor Green} catch {Write-Host '下载失败: ' $_.Exception.Message -ForegroundColor Red; Exit 1}}"

if not exist "%USERPROFILE%\Desktop\PCL2\PCL2.zip" (
    echo.
    echo [备用方案] 尝试其他下载源...
    powershell -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://pcl2.download/PCL2-2.8.3.zip', '%USERPROFILE%\Desktop\PCL2\PCL2.zip')}"
)

if exist "%USERPROFILE%\Desktop\PCL2\PCL2.zip" (
    echo.
    echo [2/3] 正在解压...
    tar -xf "%USERPROFILE%\Desktop\PCL2\PCL2.zip" -C "%USERPROFILE%\Desktop\PCL2"
    
    echo.
    echo [3/3] 正在创建快捷方式...
    
    REM 创建快捷方式
    if exist "%USERPROFILE%\Desktop\PCL2\PCL2.exe" (
        powershell -Command "& {
            $ws = New-Object -ComObject WScript.Shell;
            $s = $ws.CreateShortcut('%USERPROFILE%\Desktop\PCL2.lnk');
            $s.TargetPath = '%USERPROFILE%\Desktop\PCL2\PCL2.exe';
            $s.WorkingDirectory = '%USERPROFILE%\Desktop\PCL2';
            $s.Save();
            Write-Host '快捷方式创建成功！' -ForegroundColor Green
        }"
        
        echo.
        echo ============================================
        echo      ✅ 完成！
        echo ============================================
        echo.
        echo 桌面上已创建：
        echo   📁 PCL2 文件夹
        echo   🔗 PCL2.lnk 快捷方式
        echo.
        echo 如有疑问，请手动访问以下地址下载：
        echo   https://github.com/Hex-Dragon/PCL2/releases
        echo   https://download.fastgit.org/Hex-Dragon/PCL2/releases/download/v2.8.3/PCL2-2.8.3.zip
    ) else (
        echo.
        echo ⚠️  未找到 PCL2.exe，解压可能失败
    )
) else (
    echo.
    echo ❌ 下载失败，请检查网络连接
    echo.
    echo 手动下载方法：
    echo 1. 打开浏览器访问: https://github.com/Hex-Dragon/PCL2/releases
    echo 2. 点击 "PCL2-2.8.3.zip" 下载
    echo 3. 解压到桌面 PCL2 文件夹
)

echo.
pause
