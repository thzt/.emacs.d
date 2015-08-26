(provide 'package-init)



;���popup����װ·��
(add-to-list 'load-path "~/.emacs.d/package/popup")

;����popup��
(require 'popup)



;���auto-complete����װ·��
(add-to-list 'load-path "~/.emacs.d/package/auto-complete")

;����auto-complete��
(require 'auto-complete)

;����auto-complete-config��
(require 'auto-complete-config)

;ʹ�û�������
(ac-config-default)



;���js2-mode����װ·��
(add-to-list 'load-path "~/.emacs.d/package/js2-mode")

;����js2-mode��
(require 'js2-mode)

;����js�ļ��Զ�����js2-mode
(add-to-list 'auto-mode-alist 
	     '("\\.js\\'" . js2-mode))



;���js2-mode����װ·��
(add-to-list 'load-path "~/.emacs.d/package/markdown-mode")

;����markdown-mode��
(require 'markdown-mode)

;����md�ļ��Զ�����markdown-mode
(add-to-list 'auto-mode-alist 
	     '("\\.md\\'" . markdown-mode))
