;;包管理

(use-package restart-emacs)

(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

;;使用crux包删除当前行
(use-package crux
    :bind ("C-c k" . crux-smart-kill-line))

(use-package hungry-delete
    :bind (("C-c DEL" . hungry-delete-backward)
           ("C-c d" . hungry-delete-forward)))

;;文本补全
(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
        company-dabbrev-code-modes t
        company-dabbrev-code-other-buffers 'all
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-dabbrev-other-buffers 'all
        company-require-match nil
        company-minimum-prefix-length 2
        company-show-numbers t
        company-tooltip-limit 20
        company-idle-delay 0
        company-echo-delay 0
        company-tooltip-offset-display 'scrollbar
        company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))

;;语法检查
(use-package flycheck
  :hook (prog-mode . flycheck-mode))

;;快速切换分屏
(use-package ace-window
  :bind (("C-o" . 'ace-window)))

;;rust相关配置
(use-package racer)
(use-package rust-mode)
(use-package flycheck-rust)

(provide 'init-package)