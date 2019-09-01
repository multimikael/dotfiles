;;; ~/.config/doom/config.el -*- lexical-binding: t; -*-

(load! "+bindings")
(load! "+ui")

(global-auto-revert-mode t)

;; Temporary fix before Emacs 26.3
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Helm tramp
(use-package! helm-tramp
  :config
  (setq helm-tramp-custom-connections '(/sudo::/)))

;; private.el - No vc elisp file
(if (file-readable-p "~/.config/doom/+private.el")
    (load! "+private"))
