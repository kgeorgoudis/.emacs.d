(use-package all-the-icons)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(require 'doom-themes)
(load-theme 'doom-dracula t)

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
                    :font "Fira Code Retina" :height 120)
(set-face-attribute 'fixed-pitch nil
                    :font "Fira Code Retina"
                    :weight 'light
                    :height 140)
(set-face-attribute 'variable-pitch nil
                    :font "Cantarell"
                    :height 140
                    :weight 'regular)
