;;; init-beacon.el --- 高亮提示当前光标位置

;;; Code:
(use-package beacon
  :ensure t
  :init
  (beacon-mode t)
  :config
  (setq beacon-color "#ff006e"
	beacon-size 40
	beacon-blink-when-focused t
	))

(provide 'init-beacon)
;;; init-beacon.el ends here
