;启用词法作用域
(setq lexical-binding t)

;安装undo-tree
(add-to-list 'load-path "~/.emacs.d/package/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'redo)

;安装popup，auto-complete依赖项
(add-to-list 'load-path "~/.emacs.d/package/popup")
(require 'popup)

;安装auto-complete
(add-to-list 'load-path "~/.emacs.d/package/auto-complete")
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;安装neotree
(add-to-list 'load-path "~/.emacs.d/package/neotree")
(require 'neotree)
(global-set-key (kbd "C-<f8>") 'neotree-toggle)
(global-set-key (kbd "C-<f5>") 
		(lambda ()
		  (interactive)
		  (neotree-dir default-directory)))

;安装支持的语言模式
(dolist (language-mode '(
			 ["js2-mode" js2-mode "\\.js\\'" js2-mode]
			 ["markdown-mode" markdown-mode "\\.md\\'" markdown-mode]
			 ["python-mode" python "\\.py\\'" python-mode]
			 ["haskell-mode" haskell "\\.hs\\'" haskell-mode]
			 ["php-mode" php-mode "\\.php\\'" php-mode]
			 ["emmet-mode" emmet-mode "\\.html\\'" html-mode]
			 ["scala-mode2" scala-mode2 "\\.scala\\'" scala-mode]
			 ["scss-mode" scss-mode "\\.scss\\'" scss-mode]
			 ))

  (let ((folder-name (elt language-mode 0))
	(package (elt language-mode 1))
	(file (elt language-mode 2))
	(mode (elt language-mode 3)))

    ;添加包的安装路径
    (add-to-list 'load-path 
		 (concat "~/.emacs.d/package/" folder-name))

    ;导入安装包
    (require package)

    ;对于.xx文件自动启用xx-mode
    (add-to-list 'auto-mode-alist 
	     `(,file . ,mode))))

;按文件后缀自动加载emmet-mode，会整个替换html-mode，只能用html-mode-hook来做
(add-hook 'html-mode-hook 'emmet-mode)

;打包
(provide 'package-init)
