;;; init-evil.el --- 配置Evi
;;; Commentary:
;;; Code:
					; 安装Evil
(use-package evil
  :ensure t
  :init
  (evil-mode)
  :bind (:map evil-motion-state-map
	      ("C-u" . evil-scroll-up))
  )


(defvar evil-window-repeat-map
 (let ((map (make-sparse-keymap)))
   (define-key map "w" 'evil-window-next)
   (define-key map "C-h" 'evil-window-left)
   (define-key map "C-j" 'evil-window-down)
   (define-key map "C-k" 'evil-window-up)
   (define-key map "C-l" 'evil-window-right)
   map)
 "Repeating map for evil window select.")

(put 'evil-window-next 'repeat-map 'evil-window-repeat-map)
(put 'evil-window-left 'repeat-map 'evil-window-repeat-map)
(put 'evil-window-down 'repeat-map 'evil-window-repeat-map)
(put 'evil-window-up 'repeat-map 'evil-window-repeat-map)
(put 'evil-window-right 'repeat-map 'evil-window-repeat-map)


(provide 'init-evil)

;;; init-evil.el ends here
