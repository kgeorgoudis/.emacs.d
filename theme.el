(defvar efs/default-font-size 130)
(defvar efs/default-variable-font-size 130)

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

(set-face-attribute 'default nil :font "SF Mono" :height efs/default-font-size)
(set-face-attribute 'fixed-pitch nil :font "SF Mono" :height efs/default-font-size)
(set-face-attribute 'variable-pitch nil :font "SF Pro" :height efs/default-font-size :weight 'regular)
