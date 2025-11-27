@echo off & cd /d "%~dp0"
fsutil dirty query %systemdrive% >nul && goto :GA || gsudo "%~0" %* && exit /b
:GA
cd /d "C:\Windows\SystemApps"

if exist "Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy" (goto Disable) else (goto Enable)

:Disable
TASKKILL /F /IM StartMenuExperienceHost.exe /T
ren "Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy" "++Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy" || goto Disable
exit

:Enable
ren "++Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy" "Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy"
exit