;;; init-ivy.el 配置ivy

;;; Code:

(use-package ivy
  :ensure t
  :config
  (setq ivy-use-virtual-buffers t
	enable-recursive-minibuffers t)
  :bind (:map ivy-minibuffer-map
	      ("C-j" . ivy-next-line) ;; 下一项
	      ("C-k" . ivy-previous-line) ;; 上一选项
	      ("C-d" . ivy-scroll-up-command) ;; 向上翻页
	      ("C-u" . ivy-scroll-down-command) ;; 向下翻页
	      ("C-a" . ivy-beginning-of-buffer);; 第一个选项
	      ("C-e" . ivy-end-of-buffer) ;; 最后一个选项
	      )
  :init
  (ivy-mode -1))

(use-package all-the-icons-ivy-rich
  :ensure t
  :init (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :ensure t
  :init (ivy-rich-mode 1))


(provide 'init-ivy)

;;; init-ivy ends here



