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
(global-set-key (kbd "C-<f4>")
		(lambda ()
		  "Kill current buffer."
		  (interactive)
		  (kill-buffer)))

;配置neotree快捷键
;C-f5 定位到当前文件夹，q 隐藏neotree
(global-set-key (kbd "C-<f5>") 
		(lambda ()
		  "Refresh neotree to show current directory."
		  (interactive)
		  (neotree-dir default-directory)))

;配置ace-jump-mode快捷键，查询当前文件
;(global-set-key (kbd "C-<f6>") 'ace-jump-word-mode)

;查询目录
(global-set-key (kbd "C-<f6>")
		(lambda ()
		  "Search content in current directory."
		  (interactive)
		  (helm-ag)))


;配置dash-at-point快捷键，查询dash文档
(global-set-key (kbd "C-<f7>") 'dash-at-point)
;(global-set-key "\C-ce" 'dash-at-point-with-docset)

;为markdown-mode markdown-export-and-preview（C-c C-c v），重新绑定快捷键
(global-set-key (kbd "C-<f9>") 'markdown-export-and-preview)

;打开EShell
(global-set-key (kbd "C-<f12>") 'eshell)

;打包
(provide 'key-binding-setting)
