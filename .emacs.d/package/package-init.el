(provide 'package-init)



;��Ӱ���װ·��
(add-to-list 'load-path "~/.emacs.d/package/popup")

;����popup��
(require 'popup)



;��Ӱ���װ·��
(add-to-list 'load-path "~/.emacs.d/package/auto-complete")

;����auto-complete��
(require 'auto-complete)

;����auto-complete-config��
(require 'auto-complete-config)

;ʹ�û�������
(ac-config-default)

