;添加搜索模块的目录
(add-to-list 'load-path "~/.emacs.d/setting/")

(dolist (setting '(global-setting
		   key-binding-setting
		   package-setting

		   theme-init
		   package-init))
  (require setting))
