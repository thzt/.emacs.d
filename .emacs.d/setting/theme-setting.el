(provide 'theme-setting)

;���ôʷ�������
(setq lexical-binding t)

;��������
;zenburn Darkula solarized
(let ((theme 'zenburn))

  ;������ⰲװ·��
  (add-to-list 'custom-theme-load-path
	        (concat "~/.emacs.d/theme/"
			(symbol-name theme)))
  ;��������
  (load-theme theme t))
