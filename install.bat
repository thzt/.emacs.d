@ echo off

set emacsroot=%appdata%\.emacs.d

if exist %emacsroot% (
	rd %emacsroot% /q/s 
)

echo d | xcopy .emacs.d %emacsroot% /q/e

md %emacsroot%\server
takeown /f %emacsroot%\server