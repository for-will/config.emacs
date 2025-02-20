;;; init-package.el --- load (require 'use-package)
;;; Commentary:
;; use-package is a macro for configuring Emacs packages

;;; Code:

(require 'use-package)

(use-package package
  :hook after-init-hook
  :config
  ;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (setq package-archives
	'(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	  ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))))

(unless (bound-and-true-p package--initialized)
    (package-initialize))

(unless package-archive-contents
  (package-refresh-contents))

(provide 'init-package)

;;; init-package.el ends here
