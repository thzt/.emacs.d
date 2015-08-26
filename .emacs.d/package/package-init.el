(provide 'package-init)



;添加popup包安装路径
(add-to-list 'load-path "~/.emacs.d/package/popup")

;导入popup包
(require 'popup)



;添加auto-complete包安装路径
(add-to-list 'load-path "~/.emacs.d/package/auto-complete")

;导入auto-complete包
(require 'auto-complete)

;导入auto-complete-config包
(require 'auto-complete-config)

;使用基本配置
(ac-config-default)



;添加js2-mode包安装路径
(add-to-list 'load-path "~/.emacs.d/package/js2-mode")

;导入js2-mode包
(require 'js2-mode)

;对于js文件自动启用js2-mode
(add-to-list 'auto-mode-alist 
	     '("\\.js\\'" . js2-mode))



;添加js2-mode包安装路径
(add-to-list 'load-path "~/.emacs.d/package/markdown-mode")

;导入markdown-mode包
(require 'markdown-mode)

;对于md文件自动启用markdown-mode
(add-to-list 'auto-mode-alist 
	     '("\\.md\\'" . markdown-mode))
