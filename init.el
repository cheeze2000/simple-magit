(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq-default auto-save-default nil)
(setq-default create-lockfiles nil)
(setq-default confirm-kill-emacs #'y-or-n-p)
(setq-default inhibit-startup-screen t)
(setq-default initial-scratch-message nil)
(setq-default make-backup-files nil)
(setq-default mode-line-format "  %b")
(setq-default straight-use-package-by-default t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(straight-use-package 'use-package)
(tool-bar-mode -1)
(xterm-mouse-mode)

(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))
(use-package ivy
  :config
  (ivy-mode))
(use-package magit
  :config
  (setq-default split-width-threshold 0)
  (setq-default split-height-threshold nil)
  (call-interactively 'magit-status)
  (delete-other-windows))

(set-face-attribute 'vertical-border nil
                    :foreground (face-attribute 'default :background))
