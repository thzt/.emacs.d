(provide 'package-setting)

;���Ӱ���������ַ
(require 'package)
(add-to-list 'package-archives'
	     ("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives'
	     ("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives'
	     ("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;��ӱ��ذ���װ·��
(add-to-list 'load-path "~/.emacs.d/package/")
(add-to-list 'load-path "~/.emacs.d/theme/")
