(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory (file-truename "~/Notes/"))
  (org-roam-completion-everywhere t)
  (org-roam-capture-templates
   '(("d" "default" plain "%?"
      :if-new (file+head "main/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+created: %U\n")
      :unnarrowed t)
     ("i" "inbox" plain "%?"
      :if-new (file+head "inbox/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+created: %U\n")
      :unnarrowed t)
     ("n" "note" plain
      "Clusters: %?\n"
      :if-new (file+head "main/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+created: %U\n")
      :unnarrowed t)
     ("r" "reference" plain "%?"
      :if-new (file+head "reference/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+filetags: Reference\n#+created: %U\n")
      :unnarrowed t)))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n I" . org-roam-node-insert-immediate)
         ("C-c n c" . org-roam-capture)
         :map org-mode-map
         ("C-M-i" . completion-at-point)
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (org-roam-setup)
  (org-roam-db-autosync-mode)
  (add-hook 'org-roam-mode-hook #'turn-on-visual-line-mode))

(defun org-roam-node-insert-immediate (arg &rest args)
  (interactive "P")
  (let ((args (cons arg args))
        (org-roam-capture-templates (list (append (car org-roam-capture-templates)
                                                  '(:immediate-finish t)))))
    (apply #'org-roam-node-insert args)))
