;;; early-init.el -*- lexical-binding: t; -*-

;; Emacs HEAD (27+) introduces early-init.el, which is run before init.el,
;; before most of its package and UI initialization happens. We can use this
;; opportunity to cull parts of the startup process early.

;; Package initialize occurs automatically, before `user-init-file' is loaded,
;; but after `early-init-file'. BMACS handles package initialization, so we must
;; prevent Emacs from doing it early!

;; LOOK AT ME
;;(setq package-enable-at-startup nil)

;; Faster to disable these here (before they've been initialized)

;; no startup screen or message
(setq inhibit-startup-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      initial-scratch-message nil)

; remove uneeded ui elements
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

