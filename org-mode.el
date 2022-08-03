(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
(add-hook 'org-mode-hook 'visual-line-mode)

(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
          vterm-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
