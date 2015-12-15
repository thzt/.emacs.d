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
(set-language-environment 'utf-8)

;解决设置了字符集为utf-8后，中文标题为乱码的问题。
;windows系统上，需要设置file-name编码。但是mac上不能这样设置，否则会导致neotree显示中文乱码。
(if (eq system-type 'windows-nt)
	(set-file-name-coding-system 'gb18030))

;减小鼠标滚动速度
(setq mouse-wheel-progressive-speed nil)

;设置窗体透明色，非常透明30，不透明100。(active,inactive)
;(set-frame-parameter (selected-frame) 'alpha '(100 30))

;设置tab缩进为4个字符
(setq default-tab-width 4)

;为了只启动一个Emacs实例，要启动server
(server-start)

;打包
(provide 'global-setting)
