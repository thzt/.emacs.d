(provide 'theme-setting)

;添加主题搜索目录
(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/")

;载入主题
(load-theme 'Darkula t)
