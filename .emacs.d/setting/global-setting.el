
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

(provide 'global-setting)
