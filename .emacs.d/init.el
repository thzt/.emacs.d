;添加搜索模块的目录
(add-to-list 'load-path "~/.emacs.d/setting/")

(dolist (setting '(global-setting
		   theme-setting
		   package-setting
		   key-binding-setting
		   ))
  (require setting))
