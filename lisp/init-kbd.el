;;按键管理

(when *is-mac*
    (setq mac-command-modifier 'meta)
    (setq mac-option-modifier 'none))

;;使用y和n代替yes和no
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-kbd)