# distarter
a script to toggle the windows 10 & 11 start menu

![distarter desktop context-menu](screenshot.png)

## usage
- to simply toggle the start menu, just run [toggle.bat](toggle.bat)
- to add the desktop context menu option, run the [desktop.bat](desktop.bat) file (be careful to keep [toggle.bat](toggle.bat) in the same location as [desktop.bat](desktop.bat))
- to remove the desktop context menu option, run the [remove_desktop.bat](remove_desktop.bat)

## changes
- replace nsudo for gsudo (assumes it is installed)
- remove submenu from context menu option
- remove icon from context menu option
- seperate toggle and desktop logic