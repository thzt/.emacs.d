(provide 'global-setting)

;����ʾ��������
(custom-set-variables '(inhibit-startup-screen 1))

;��겻��˸
;(blink-cursor-mode -1)

;���ù��Ϊ����
(setq-default cursor-type 'bar)

;��ʾƥ������
(show-paren-mode 1)

;�ر��Զ�����
(setq auto-save-default nil)

;�ر��Զ�����
(setq make-backup-files nil)

;�رչ�����
(tool-bar-mode -1)

;�رղ˵���
;(menu-bar-mode -1)

;���ñ���Ϊ�ļ���
(setq frame-title-format "%b")

;��ʾ�к�
(line-number-mode 1)

;��ʾ�к�
(column-number-mode 1)

;�ѻش�yes/no�ĳ�y/n
(fset 'yes-or-no-p 'y-or-n-p)