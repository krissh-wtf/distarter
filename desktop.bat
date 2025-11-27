@echo off & cd /d "%~dp0"
fsutil dirty query %systemdrive% >nul && goto:GA || gsudo "%~0" %* && exit /b
:GA

reg add "HKCR\DesktopBackground\Shell\0Toggle" /v "SeparatorBefore" /t REG_SZ /d "" /f
reg delete "HKCR\DesktopBackground\Shell\0Toggle\SubCommands" /f >nul 2>&1
reg add "HKCR\DesktopBackground\Shell\0Toggle" /v "MUIVerb" /t REG_SZ /d "Distarter" /f
reg add "HKCR\DesktopBackground\Shell\0Toggle\command" /ve /t REG_SZ /d "\"%~dp0toggle.bat\"" /f

pause
exit