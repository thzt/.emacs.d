@ echo off

if exist %appdata%\.emacs.d (
	rd %appdata%\.emacs.d /q/s 
)

echo d | xcopy .emacs.d %appdata%\.emacs.d /q/e