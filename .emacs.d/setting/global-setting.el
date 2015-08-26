;不显示启动画面
(custom-set-variables '(inhibit-startup-screen 1))

;光标不闪烁
;(blink-cursor-mode -1)

;设置光标为竖线
(setq-default cursor-type 'bar)

;显示匹配括号
(show-paren-mode 1)

;关闭自动保存
(setq auto-save-default nil)

;关闭自动备份
(setq make-backup-files nil)

;关闭工具栏
(tool-bar-mode -1)

;关闭菜单栏
;(menu-bar-mode -1)

;设置标题为文件名
(setq frame-title-format "%b")

;显示行号
(line-number-mode)

;显示列号
(column-number-mode)

;全局显示行号
(global-linum-mode)

;把回答yes/no改成y/n
(fset 'yes-or-no-p 'y-or-n-p)

;设置字符集
(set-language-environment "UTF-8")

;打包
(provide 'global-setting)
