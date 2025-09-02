@echo off 
cd  /d  "%~dp0"
if "%1" == "h" goto begin 
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 
:begin
md "C:\TMP"
copy "\\192.20.11.31\共用軟體區\程式軟體區\7z2409\7-zip2409update.exe" "C:\TMP" /y
copy "\\192.20.11.31\共用軟體區\程式軟體區\7z2409\7-zip2409.bat" "C:\TMP" /y
timeout /t 5 /nobreak
"C:\TMP\"7-zip2409update.exe