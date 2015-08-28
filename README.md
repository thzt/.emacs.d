# .emacs.d
emacs configuration

## install.bat

This bat file will do these things:

1.It will **delete** "%appdta%/.emacs.d" and copy "/.emacs.d" to that place, including all elisp code.

It will set the owner of "%appdta%/.emacs.d/server" to the current user, for the reason of starting emacs as server.

## context-menu.reg/remove-context-menu.reg

This two reg file will add "Open with Emacs" to context menu, and only start one emacs instance.

## .emacs.d

"init.el" is the entrance, it will load all self-defined configurations in "/setting" directory.

"/package" and "/theme" are both thirdpart library, downloaded from github, their management code are placed in "/setting/package-setting.el" and "theme-setting.el".

"/setting/global-setting.el" contains settings for global environment.

"/setting/key-binding-setting.el" contains all keybindings.
