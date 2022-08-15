;;; packages.el --- keyfreq layer packages file for Spacemacs
;;
;; Copyright (c) 2022-2022 Forrest
;; Created at 2022/08/12 by Forrest.
;; v0.0.1 2022/08/12 gqd New file;

(setq keyfreq-packages '(keyfreq))

(defun keyfreq/init-keyfreq ()
  (setq keyfreq-excluded-commands
        '(self-insert-command
          evil-insert
          evil-forward-char
          evil-backward-char
          treemacs-previous-line
          treemacs-next-line
          evil-previous-line
          evil-next-line
          lsp-ui-doc--handle-mouse-movement))
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1)
  )
