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

;打开EShell
(global-set-key (kbd "C-<f12>") 'eshell)

;关闭当前buffer
(global-set-key (kbd "C-<f4>")
		(lambda ()
		  "Kill current buffer."
		  (interactive)
		  (kill-buffer)))

;设置选择区块的开始标志
(global-set-key (kbd "C-<f1>") 'set-mark-command)

;打包
(provide 'key-binding-setting)
