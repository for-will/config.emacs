;;; init-avy.el --- 配置avy
;;; Commentary:
;;; Code:


(use-package avy
  :ensure t
  :bind (:map evil-motion-state-map
	      ("gc" . 'evil-avy-goto-char)	;; 跳转到字符
	      ("gl" . 'evil-avy-goto-line)	;; 跳转到行
	      :map evil-normal-state-map
	      ("gw" . 'evil-avy-goto-word-1)))	;; 跳转到单词

(provide 'init-avy)
;;; init-avy.el ends here
