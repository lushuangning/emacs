;;设置字体
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;;设置垃圾回收阈值，加速启动速度
(setq gc-cons-threshold most-positive-fixnum)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-screen t)

;;设置默认的工作路径
(setq default-directory "E:/")
(setq user-full-name "Lu Shuangning")
(setq user-mail-address "sdyglsn@126.com")

;;关闭自动备份
(setq make-backup-files nil)

(provide 'init-startup)