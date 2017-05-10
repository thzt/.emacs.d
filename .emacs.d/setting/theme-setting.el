;启用词法作用域 -*- lexical-binding: t -*-

;如果需要使用solarized-dark主题，需要设置background-mode为dark
;(set-frame-parameter nil 'background-mode 'dark)

;设置主题
;zenburn Darkula solarized
(let ((theme 'zenburn))

  ;添加主题安装路径
  (add-to-list 'custom-theme-load-path
	        (concat "~/.emacs.d/theme/"
			(symbol-name theme)))
  ;载入主题
  (load-theme theme t))

;打包
(provide 'theme-setting)
