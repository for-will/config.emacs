;;; init-themes.el --- 加载配色主题 -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; 配色主题
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-1337 t))



;; 显示分割线
(use-package page-break-lines
  :ensure t
  :config
  (global-page-break-lines-mode t))



;; 为括号显示不同的颜色
(use-package rainbow-delimiters
  :ensure t
  :hook
  (prog-mode . rainbow-delimiters-mode))



;; 在120列处显示标线
(setq-default fill-column 100)
;; (setq-default display-fill-column-indicator-character ?╎)
(setq-default display-fill-column-indicator-character ?┊)
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)




;; 显示转义字符串
(use-package highlight-escape-sequences
  :ensure t
  :hook
  (after-init . hes-mode))



;; 设置高亮显示当前行的颜色
(global-hl-line-mode 1)
(set-face-background 'hl-line "#3e4446")
(set-face-foreground 'highlight nil)




(provide 'init-themes)
;;; init-themes.el ends here
