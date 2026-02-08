@echo off
echo Downloading PCL2...

mkdir "%USERPROFILE%\Desktop\PCL2" 2>nul

echo Downloading...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://download.fastgit.org/Hex-Dragon/PCL2/releases/download/v2.8.3/PCL2-2.8.3.zip', '%USERPROFILE%\Desktop\PCL2\PCL2.zip')"

if exist "%USERPROFILE%\Desktop\PCL2\PCL2.zip" (
    echo Extracting...
    tar -xf "%USERPROFILE%\Desktop\PCL2\PCL2.zip" -C "%USERPROFILE%\Desktop\PCL2"
    
    echo Creating shortcut...
    powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%USERPROFILE%\Desktop\PCL2.lnk');$s.TargetPath='%USERPROFILE%\Desktop\PCL2\PCL2.exe';$s.Save()"
    
    echo DONE!
    echo Desktop folder: PCL2
    echo Shortcut: PCL2.lnk
) else (
    echo Download failed!
    echo Please manually download from: https://github.com/Hex-Dragon/PCL2/releases
)

pause
