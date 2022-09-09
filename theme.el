(use-package all-the-icons)
(use-package all-the-icons-completion
  :after (marginalia all-the-icons)
  :hook (marginalia-mode . all-the-icons-completion-marginalia-setup)
  :init
  (all-the-icons-completion-mode))
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
(setq doom-modeline-bar-width 4)
(setq doom-modeline-buffer-file-name-style 'auto)
(setq doom-modeline-icon t)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-time-icon t)
(setq doom-modeline-buffer-encoding t)
(setq doom-modeline-mu4e nil)
;;(mu4e-alert-enable-mode-line-display)
(setq doom-modeline-time t)

(require 'doom-themes)
;;(load-theme 'doom-snazzy t)
(load-theme 'doom-one-light t)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))

(doom-themes-visual-bell-config)
(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)

(load-theme 'org-beautify t)

(use-package command-log-mode)

(set-face-attribute 'default nil
                    :font "DejaVu Sans Mono"
                    :height 120)
(set-face-attribute 'fixed-pitch nil
                    :font "DejaVu Sans Mono"
                    :weight 'light
                    :height 140)
(set-face-attribute 'variable-pitch nil
                    :font "DejaVu Sans Mono for Powerline Book"
                    :height 140
                    :weight 'regular)
