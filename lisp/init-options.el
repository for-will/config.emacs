;; init-options --- options setup
;;; Commentary:
;;; Code:

;; Emacs builtin packages
(setq-default auto-window-vscroll nil
	      default-directory "~"
	      default-text-properties '(line-spacing 0.1 line-height 1.1) ;default line height
	      frame-title-format "%b"
	      help-window-select t
	      ;; initial-major-mode 'fundamental-mode
	      inhibit-startup-screen t ; disable the startup screen splash
	      isearch-allow-motion t
	      isearch-lazy-count t
	      kill-whole-line t
	      ;; mode-line-compact t
	      make-backup-files nil	; disable backup file
	      read-process-output-max (* 4 1024 1024)
	      require-final-newline t
	      scroll-conservatively 1000
	      show-trailing-whitespace nil ;; 禁用高亮显示行尾的空白字符
	      system-time-locale "C"
	      use-short-answers t)

;; auto revert
;; `global-auto-revert-mode' is provided by autorevert.el (builtin)
(add-hook 'after-init-hook 'global-auto-revert-mode)

;; auto save to the visited file (provided by `files.el')
(add-hook 'after-init-hook 'auto-save-visited-mode)

;; Delete Behavior
;; `delete-selection-mode' is provided by delsel.el (builtin)
(add-hook 'after-init-hook 'delete-selection-mode)

;; visual-line-mode
(add-hook 'after-init-hook 'global-visual-line-mode)
(add-hook 'after-init-hook 'global-display-line-numbers-mode)

;; pixel-scroll-precise-mode
(add-hook 'after-init-hook 'pixel-scroll-precision-mode)

;; ;; fido-mode
;; ;; `fido-mode' is provided by icomplete.el
;; (use-package icomplete
;;   :hook (after-init . fido-mode)
;;   :config (setq completions-detailed t))

;; Highlight Current Line
(use-package hl-line
  ;; :when (display-graphic-p)
  :hook (prog-mode . hl-line-mode))

;; Pulse the cursor line
(dolist (cmd '(recenter-top-bottom other-window))
  (advice-add cmd :after (lambda (&rest _) (pulse-momentary-highlight-one-line))))

;; Show Paren Mode
(use-package paren
  :config
  (setq show-paren-when-point-in-periphery t
	show-paren-when-point-inside-paren t
	show-paren-style 'mixed))


;;; 最近打开的文件
(use-package recentf
  :hook (after-init . recentf-mode)
  :config
  (setq recentf-max-saved-items 100
	recentf-save-file (expand-file-name "var/recentf" user-emacs-directory)))

;; windmove.el, use  <SHIFT - arrow key> to switch buffers
(use-package windmove
  :config (windmove-default-keybindings))



(menu-bar-mode -1)   ;; 不显示菜单
(tool-bar-mode -1)   ;; 不显示工具栏
(scroll-bar-mode -1) ;; 不显示滚动条



;;; 高亮当前行
(global-hl-line-mode -1)

;;; 括号自动配对
(electric-pair-mode t)

;;; 关闭生成备份文件
(setq make-backup-files nil)


;;; 保存历史，记住上个命令
(use-package savehist
  :ensure nil
  :hook
  (after-init . savehist-mode)
  :config
  (setq
   savehist-file (expand-file-name ".savehist" user-emacs-directory)
   enable-recursive-minibuffers t ; Allow command in minibuffers
   history-length 1000
   savehist-additional-variables '(mark-ring global-mrk-ring search-ring regrexp-search-ring extended-command-history)
   savehist-autosave-interval 300))



;;; 窗口居中
;; (modify-frame-parameters
;;  nil '((top . 0.5) (left . 0.5)))

;; (org-babel-load-file
 ;; (expand-file-name "myinit.org" user-emacs-directory))


(electric-indent-mode t)	;; 智能缩进

;; (prefer-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (setq default-buffer-file-coding-system 'utf8)
;; (unless *is-windows*
;;   (set-selection-coding-system 'utf-8))

;; (setq gc-cons-threshold most-positive-fixnum)


;;; 语法高亮等级(最高为4)
(setq treesit-font-lock-level 4)

;; (load-theme 'deeper-blue)


(provide 'init-options)

;;; init-options.el ends here
