@ echo off

if exist %appdata%\.emacs.d (
	rd /q /s %appdata%\.emacs.d
)

echo d | xcopy .emacs.d %appdata%\.emacs.d /q /e