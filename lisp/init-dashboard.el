;;; init-dashboard.el --- 启动页配置

;;; Code:

(use-package dashboard
  :ensure t
  :config
  ;; 设置 Dashboard 为启动界面
  (dashboard-setup-startup-hook)

  ;; 设置 Dashboard 的标题
  (setq dashboard-banner-logo-title "Welcome to Emacs!")

  ;; 设置横幅（可以是内置样式或自定义图片）
  (setq dashboard-startup-banner 'official)  ; 使用官方 Logo
  ;; (setq dashboard-startup-banner "~/path/to/your/banner.png")  ; 使用自定义图片

  ;; 设置显示的条目数量
  (setq dashboard-items '((recents   . 5)
                          (bookmarks . 5)
                          (projects  . 5)
                          (agenda    . 5)
                          (registers . 5))))

(provide 'init-dashboard)

;;; init-dashboard.el ends here
