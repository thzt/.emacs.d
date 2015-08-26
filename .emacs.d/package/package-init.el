(provide 'package-init)

;添加包的安装路径
;(add-to-list 'load-path "~/.emacs.d/package/...")

;导入安装包
;(require ...)

;对于.xx文件自动启用xx-mode
;(add-to-list 'auto-mode-alist 
;	     '("\\.xx\\'" . xx-mode))



(add-to-list 'load-path "~/.emacs.d/package/popup")
(require 'popup)

(add-to-list 'load-path "~/.emacs.d/package/auto-complete")
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'load-path "~/.emacs.d/package/js2-mode")
(require 'js2-mode)
(add-to-list 'auto-mode-alist 
	     '("\\.js\\'" . js2-mode))

(add-to-list 'load-path "~/.emacs.d/package/markdown-mode")
(require 'markdown-mode)
(add-to-list 'auto-mode-alist 
	     '("\\.md\\'" . markdown-mode))

(add-to-list 'load-path "~/.emacs.d/package/python")
(require 'python)
(add-to-list 'auto-mode-alist 
	     '("\\.py\\'" . python-mode))
