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