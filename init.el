;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Produce backtraces when errors occur: can be helpful to diagnose
;; startup issues
;; (setq debug-on-error t)

(let ((minver "27.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "28.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; (require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))


;; Adjust garbage collection threshold for early startup (see use of gcmh below)
(setq gc-cons-threshold (* 128 1024 1024))


;; Process performance tuning

(setq read-process-output-max (* 4 1024 1024))
(setq process-adaptive-read-buffering nil)


;; Bootstrap config

;; General performance tuning
(use-package diminish
  :ensure t)

;; 优化垃圾回收
(use-package gcmh
  :ensure t
  :config
  (setq gcmh-high-cons-threshold (* 128 1024 1024))
  :hook
  (after-init-hook . (lambda ()
		       (gcmh-mode t)
		       (diminish 'gcmh-mode))))


(setq custom-file (locate-user-emacs-file "custom.el"))



(require 'init-utils)
;; (require 'init-site-lisp) ;; Must come before elpa, as it may provide
(require 'init-package)			;; init package
(require 'init-options)			;; 基础配置
(require 'init-evil)			;; init evil
(require 'init-avy)			;; avy快速跳转
(require 'init-keys)			;; 快捷键设置
(require 'init-which-key)		;; 显示快捷键菜单
(require 'init-marginalia)		;; minibuffer显示注释说明
(require 'init-nerd-icons-completion)	;; 添加icons
(require 'init-awesome-tab)		;; tab增强显示
(require 'init-doom-modeline)		;; 使用doom-modeline
(require 'init-fonts)			;; 设置字体
(require 'init-embark)			;; 配置embark -- 快捷操作菜单
(require 'init-beacon)			;; 闪烁显示光标位置
(require 'init-ivy)			;; ivy
(require 'init-vertico)			;; 使用vertico的选项自动补全

;; (require 'init-dashboard)		;; 启动页配置

(require 'init-themes)			;; 配色主题
(require 'init-symbol-overlay)		;; 自动高亮与光标下符号相同的所有实例 



;;; init.el ends here
