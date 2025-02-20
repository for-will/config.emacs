;;; init-keys --- 设置快捷键
;;; Commentary:
;;; Code:

;; 打开配置文件 init.el
(defun zz/open-user-file ()
  "Open User Config file init.el"
  (interactive)
  (find-file (expand-file-name "init.el" user-emacs-directory)))

(use-package general
  :ensure t)

(general-create-definer my-leader-def
  ;; :prefix my-leader
  :prefix "SPC")

(my-leader-def
  :states '(visual normal operator motion)
  "" nil
  "x" 'execute-extended-command
  "f" 'find-file
  "b" 'counsel-buffer-or-recentf
  "r" 'consult-recent-file
  "q" 'evil-quit
  "s" 'swiper
  "c" 'zz/open-user-file
  "t" 'awesome-tab-ace-jump
  "g" 'awesome-tab-switch-group
  )

;; (general-evil-setup)

;; (general-nmap
;;   "gc" 'evil-avy-goto-char		;; 跳转到字符
;;   "gw" 'evil-avy-goto-word-1		;; 跳转到单词
;;   "gl" 'evil-avy-goto-line)		;; 跳转到行

(provide 'init-keys)
;;; init-keys.el ends here
