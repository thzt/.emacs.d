
;�������ģ���Ŀ¼
(add-to-list 'load-path "~/.emacs.d/setting/")

(dolist (setting '(package-install-setting
		   global-setting
		   theme-setting
		   key-binding-setting
		   popup-setting
		   auto-complete-setting))
  (require setting))
