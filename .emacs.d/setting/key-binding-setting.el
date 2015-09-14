;剪切
;(global-set-key (kbd "C-x") 'kill-region)

;复制
;(global-set-key (kbd "C-c") 'kill-ring-save)

;粘贴
;(global-set-key (kbd "C-v") 'yank)

;全选
;(global-set-key (kbd "C-a") 'mark-whole-buffer)

;撤销
;(global-set-key (kbd "C-z") 'undo)

;保存
;(global-set-key (kbd "C-s") 'save-buffer)

;设置选择区块的开始标志
(global-set-key (kbd "C-`") 'set-mark-command)

;关闭当前buffer
(global-set-key (kbd "M-<f4>")
		(lambda ()
		  "Kill current buffer."
		  (interactive)
		  (kill-buffer)))

;配置neotree快捷键
;f5 定位到当前文件夹，q 隐藏neotree
(global-set-key (kbd "<f5>") 
		(lambda ()
		  "Refresh neotree to show current directory."
		  (interactive)
		  (neotree-dir default-directory)))

;打开EShell
(global-set-key (kbd "<f12>") 'eshell)

;配置dash-at-point快捷键
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)

;打包
(provide 'key-binding-setting)
