;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))
;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "*** Emacs loaded in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))
(set-default-coding-systems 'utf-8)
(server-start)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(setq inhibit-startup-message t
      visible-bell nil
      blink-cursor-mode nil
      hl-line-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(recentf-mode 1)
(setq history-length 25)
(savehist-mode 1)
(save-place-mode 1)
(setq use-dialog-box nil)
(global-auto-revert-mode 1)
(setq calendar-week-start-day 1)
(setq require-final-newline t)
(setq make-backup-files nil)
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook  'turn-on-auto-fill)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq delete-by-moving-to-trash t)
(setq ispell-program-name "/opt/homebrew/bin/aspell")
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		vterm-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
