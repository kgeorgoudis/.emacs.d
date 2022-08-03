(use-package all-the-icons-dired)
(setq all-the-icons-dired-monochrome nil)
(add-hook 'dired-after-readin-hook 'dired-git-info-auto-enable)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
