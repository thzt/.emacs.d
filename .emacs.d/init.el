
;���Ӱ���������ַ
(require 'package)
(add-to-list 'package-archives'
	     ("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives'
	     ("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives'
	     ("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)



;�������ģ���Ŀ¼
(add-to-list 'load-path "~/.emacs.d/setting/")

;����global-settingģ��
(require 'global-setting)

;����key-bindingģ��
(require 'key-binding)

;����schemeģ��
(require 'scheme-module)



;�����������Ŀ¼
(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/")

;��������
(load-theme 'Darkula t)

