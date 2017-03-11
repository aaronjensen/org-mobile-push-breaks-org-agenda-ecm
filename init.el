;; -*- emacs-lisp -*-
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(setq package-load-list '(all))
(unless (package-installed-p 'org-plus-contrib)
  (package-install 'org-plus-contrib))
(package-initialize)

(setq create-lockfiles nil)
(let ((d "~/.emacs.d"))
  (setq org-agenda-files (list (concat d "/org")))
  (setq org-mobile-files (list (concat d "/org")))
  (setq org-mobile-directory (concat d "/mobile")))
