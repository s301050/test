@echo off 
cd  /d  "%~dp0"
if "%1" == "h" goto begin 
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 
:begin

IF EXIST "C:\TMP\7z2409x64.exe" (EXIT)
IF EXIST "%ProgramFiles%\7-Zip\Uninstall.exe" ( 
	copy "\\192.20.11.31\共用軟體區\程式軟體區\7z2409\7z2409-x64.exe" "C:\TMP"
	timeout /t 20 /nobreak
	cd "C:\Program Files\7-Zip"
	"C:\Program Files\7-Zip\"Uninstall.exe /S
	timeout /t 20 /nobreak
	"C:\TMP\"7z2409-x64.exe /S /D="C:\Program Files\7-Zip\"
	timeout /t 20 /nobreak
	Del "C:\TMP\7-zip2409.bat"
	Del "C:\TMP\7-zip2409update.exe"
    ) ELSE (
        copy "\\192.20.11.31\共用軟體區\程式軟體區\7z2409\7z2409-x64.exe" "C:\TMP"
	timeout /t 20 /nobreak
	"C:\TMP\"7z2409-x64.exe /S /D="C:\Program Files\7-Zip\"
	timeout /t 20 /nobreak
	Del "C:\TMP\7-zip2409.bat"
	Del "C:\TMP\7-zip2409update.exe"
    )
    