;;; init-nerd-icons-completion --- minibuffer中显示图标


;;; Code:

(use-package nerd-icons-completion
  :after marginalia
  :config
  (nerd-icons-completion-mode)
  (add-hook 'marginalia-mode-hook #'nerd-icons-completion-marginalia-setup))


(provide 'init-nerd-icons-completion)
;;; init-nerd-icons-completion.el ends here
