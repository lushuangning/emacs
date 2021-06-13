;;(use-package rust-mode
;;  :bind (:map rust-mode-map ("C-c C-c" . rust-run)) ;bind the rust-run key
;;  :config (setq indent-tabs-mode nil                ;rust use spaces instead of tab
;;                rust-format-on-save t)              ;format code before save
;;  )


(require 'racer)
(require 'rust-mode)
(require 'electric)
(require 'eldoc)
(require 'flycheck)
(require 'flycheck-rust)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook  #'company-mode)
(add-hook 'rust-mode-hook  #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'rust-mode-hook
          '(lambda ()
	     (setq racer-cmd (concat (getenv "HOME") "/.rust-dev/racer/target/release/racer"))
	     (setq racer-rust-src-path (concat (getenv "HOME") "/.rust-dev/rust/src"))
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
	     (electric-pair-mode 1)))

(provide 'init-rust)