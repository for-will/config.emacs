;;; init-which-key.el --- 显示快捷键菜单的插件
;;; Commendary:


;;; Code:

(use-package which-key
  :ensure t
  :config
  ;; Allow C-h to trigger which-key before it is done automatically
  (setq which-key-show-early-on-C-h t)
  ;; make sure which-key doesn't show normally but refreshes quickly after it is
  ;; triggered.
  (setq which-key-idle-delay 0.5)
  (setq which-key-idle-secondary-delay 0.0)
  (which-key-mode))

(provide 'init-which-key)
;;; init-which-key.el ends here
