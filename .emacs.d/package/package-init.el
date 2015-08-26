(provide 'package-init)

;���ôʷ�������
(setq lexical-binding t)

;��װpopup��auto-complete������
(add-to-list 'load-path "~/.emacs.d/package/popup")
(require 'popup)

;��װauto-complete
(add-to-list 'load-path "~/.emacs.d/package/auto-complete")
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;��װneotree
(add-to-list 'load-path "~/.emacs.d/package/neotree")
(require 'neotree)
(global-set-key [C-f8] 'neotree-toggle)

;��װ֧�ֵ�����ģʽ
(dolist (language-mode '(["js2-mode" js2-mode "\\.js\\'" js2-mode]
			 ["markdown-mode" markdown-mode "\\.md\\'" markdown-mode]
			 ["python-mode" python "\\.py\\'" python-mode]
			 ["haskell-mode" haskell "\\.hs\\'" haskell-mode]
			 ["php-mode" php-mode "\\.php\\'" php-mode]))

  (let ((folder-name (elt language-mode 0))
	(package (elt language-mode 1))
	(file (elt language-mode 2))
	(mode (elt language-mode 3)))

    ;��Ӱ��İ�װ·��
    (add-to-list 'load-path 
		 (concat "~/.emacs.d/package/" folder-name))

    ;���밲װ��
    (require package)

    ;����.xx�ļ��Զ�����xx-mode
    (add-to-list 'auto-mode-alist 
	     `(,file . ,mode))))
