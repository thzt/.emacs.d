
;增加包的搜索网址
(require 'package)
(add-to-list 'package-archives'
	     ("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives'
	     ("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives'
	     ("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)



;添加搜索模块的目录
(add-to-list 'load-path "~/.emacs.d/setting/")

;加载global-setting模块
(require 'global-setting)

;加载key-binding模块
(require 'key-binding)

;加载scheme模块
(require 'scheme-module)



;添加主题搜索目录
(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/")

;载入主题
(load-theme 'Darkula t)

