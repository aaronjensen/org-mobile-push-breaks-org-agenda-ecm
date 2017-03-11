;; -*- emacs-lisp -*-
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)
(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))
(setq package-load-list '(all))     ;; List of packages to load
(unless (package-installed-p 'org)  ;; Make sure the Org package is
  (package-install 'org))           ;; installed, install it if not
(package-initialize)                ;; Initialize & Install Package

(setq create-lockfiles nil)
(let ((d "~/.emacs.d"))
  (setq org-agenda-files (list (concat d "/org")))
  (setq org-mobile-files (list (concat d "/org")))
  (setq org-mobile-directory (concat d "/mobile")))
