;启用词法作用域
(setq lexical-binding t)

;安装exec-path-from-shell
(add-to-list 'load-path "~/.emacs.d/package/exec-path-from-shell")
(require 'exec-path-from-shell)

;在mac os x中，从shell中同步exec-path
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;安装maxframe
;(add-to-list 'load-path "~/.emacs.d/package/maxframe")
;(require 'maxframe)
;(add-hook 'window-setup-hook 'maximize-frame t)

;安装undo-tree，C-/ undo，C-? redo
(add-to-list 'load-path "~/.emacs.d/package/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)

;安装popup，auto-complete依赖项
;(add-to-list 'load-path "~/.emacs.d/package/popup")
;(require 'popup)

;安装auto-complete
;(add-to-list 'load-path "~/.emacs.d/package/auto-complete")
;(require 'auto-complete)
;(require 'auto-complete-config)
;(ac-config-default)

;安装company-mode
(add-to-list 'load-path "~/.emacs.d/package/company-mode")
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;安装neotree
(add-to-list 'load-path "~/.emacs.d/package/neotree")
(require 'neotree)

;安装dash-at-point
(add-to-list 'load-path "~/.emacs.d/package/dash-at-point")
(require 'dash-at-point)

;安装ag依赖的dash
(add-to-list 'load-path "~/.emacs.d/package/dash")
(require 'dash)

;安装ag依赖的s
(add-to-list 'load-path "~/.emacs.d/package/s")
(require 's)

;安装ag
(add-to-list 'load-path "~/.emacs.d/package/ag")
(require 'ag)

;安装helm-ag依赖的helm
(add-to-list 'load-path "~/.emacs.d/package/helm")
(require 'helm)

;安装helm-ag
(add-to-list 'load-path "~/.emacs.d/package/helm-ag")
(require 'helm-ag)

;在windows操作系统中，需要把D:\software\emacs\bin\ag.exe加入环境变量
(when (memq window-system '(w32))
  (setenv "PATH" (concat "D:\\software\\emacs\\bin;" (getenv "PATH")))
  (setq exec-path (cons "D:\\software\\emacs\\bin" exec-path)))

;安装ace-jump-mode
;(add-to-list 'load-path "~/.emacs.d/package/ace-jump-mode")
;(require 'ace-jump-mode)

;安装支持的语言模式
(dolist (language-mode '(
			 ["js2-mode" js2-mode "\\.js\\'" js2-mode]
			 ["markdown-mode" markdown-mode "\\.md\\'" markdown-mode]
			 ["python-mode" python "\\.py\\'" python-mode]
			 ["haskell-mode" haskell "\\.hs\\'" haskell-mode]
			 ["scala-mode2" scala-mode2 "\\.scala\\'" scala-mode]
			 ["scss-mode" scss-mode "\\.scss\\'" scss-mode]			 
			 ["web-mode" web-mode "\\.html\\|.vm\\|.php\\'" web-mode]			 
			 ["emacs-tss" typescript "\\.ts\\'" typescript-mode]
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

;安装emmet-mode
(add-to-list 'load-path "~/.emacs.d/package/emmet-mode")
(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

(add-to-list 'load-path "~/.emacs.d/package/vtl-mode")
(require 'vtl)
(add-hook 'web-mode-hook 'vtl-mode)

;打包
(provide 'package-setting)
