(use-package vertico
  :ensure t
  :bind (:map vertico-map
              ("C-j" . vertico-next)
              ("C-k" . vertico-previous)
              ("C-f" . vertico-exit)
              :map minibuffer-local-map
              ("M-h" . backward-kill-word))
  :init
  :custom
  (vertico-cycle nil)
  (vertico-resize nil)
  (vertico-mode +1))

(use-package corfu
  :init
  (global-corfu-mode))

(use-package savehist
  :init
  (savehist-mode))

(use-package marginalia
  :after vertico
  :ensure t
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :init
  (marginalia-mode))

(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

(use-package consult
  :bind (("M-s f" . consult-find)
         ("M-s g" . consult-git-grep)
         ("M-s r" . consult-ripgrep)))

(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles . (partial-completion))))))

