;;更换主题
(use-package afternoon-theme
   :init (load-theme 'afternoon t))

;;字体
(use-package emacs
  :if (display-graphic-p)
  :config
  ;; Font settings
  (if *is-windows*
    (progn
      (set-face-attribute 'default nil :font "Microsoft Yahei 16")
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font) charset (font-spec :family "Microsoft Yahei" :size 18))))
  (set-face-attribute 'default nil :font "Source Code Pro for Powerline 11")))

;;行号
(use-package emacs
    ;;:unless *is-windows*
    :config
    (setq display-line-numbers-type 't)
    (global-display-line-numbers-mode t))

(provide 'init-ui)