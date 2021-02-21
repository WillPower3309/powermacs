  ;;; load-nano.el -*- lexical-binding: t; -*-


(setq doom-theme 'nil)

(add-to-list 'load-path "~/nano-emacs")
(require 'nano)

(setq display-line-numbers-type nil
      hl-line-mode nil)

(setq evil-default-cursor t)
(setq custom-blue "#718591")
(if (daemonp)
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (with-selected-frame frame
                  (set-cursor-color custom-blue))))
  (set-cursor-color custom-blue))

(provide 'load-nano)
