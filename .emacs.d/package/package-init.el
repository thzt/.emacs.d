(provide 'package-init)



;添加popup包安装路径
(add-to-list 'load-path "~/.emacs.d/package/popup")

;导入popup包
(require 'popup)



;添加auto-complete包安装路径
(add-to-list 'load-path "~/.emacs.d/package/auto-complete")

;导入auto-complete包
(require 'auto-complete)

;导入auto-complete-config包
(require 'auto-complete-config)

;使用基本配置
(ac-config-default)

