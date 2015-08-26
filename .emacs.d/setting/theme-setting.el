(provide 'theme-setting)

;启用词法作用域
(setq lexical-binding t)

;设置主题
;zenburn Darkula solarized
(let ((theme 'zenburn))

  ;添加主题安装路径
  (add-to-list 'custom-theme-load-path
	        (concat "~/.emacs.d/theme/"
			(symbol-name theme)))
  ;载入主题
  (load-theme theme t))
