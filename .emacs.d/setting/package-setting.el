(provide 'package-setting)

;增加包的搜索网址
(require 'package)
(add-to-list 'package-archives'
	     ("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives'
	     ("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives'
	     ("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;添加本地包安装路径
(add-to-list 'load-path "~/.emacs.d/package/")
(add-to-list 'load-path "~/.emacs.d/theme/")
