@echo off & cd /d "%~dp0"
fsutil dirty query %systemdrive% >nul && goto:GA || gsudo "%~0" %* && exit /b
:GA

reg delete "HKCR\DesktopBackground\Shell\0Toggle" /f >nul 2>&1