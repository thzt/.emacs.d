;;;; install package

(require 'package)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(dolist (pkg '(js2-modoe web-mode json-mode markdown-mode))
  (when (and (not (package-installed-p pkg))
	     (assoc pkg package-archive-contents))
    (package-install pkg)))

;;;; config setting
	
(add-to-list 'load-path "~/.emacs.d/setting")
(require 'global-setting)