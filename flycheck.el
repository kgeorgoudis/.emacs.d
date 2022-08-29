(use-package flycheck
  :defer t
  :hook (lsp-mode . flycheck-mode))

(use-package flyspell
  :config
  (setq ispell-program-name "/opt/homebrew/bin/aspell"
        ispell-default-dictionary "en_GB")
  :hook (text-mode . flyspell-mode)
  :bind (("M-<f7>" . flyspell-buffer)
         ("<f7>" . flyspell-word)
         ("C-;" . flyspell-auto-correct-previous-word)))
