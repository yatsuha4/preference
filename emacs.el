;;
(defun insert-colon-space ()
  (interactive)
  (insert ", ")
  )

;;
;; C#
;;
(defun my-csharp-mode-hook ()
  (local-set-key "," 'insert-colon-space)
  (local-set-key "\M-j" 'indent-region)
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
  )
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)

;;
;; C/C++
;;
(defun my-c-mode-hook ()
  ;; VisualStudioがBOM付きでないと警告を出すので
  (prefer-coding-system 'utf-8-with-signature)
  )
(add-hook 'c-mode-common-hook 'my-c-mode-hook)

;;
;;
;;
(global-font-lock-mode 0)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-s" 'sort-lines)
(prefer-coding-system 'utf-8)
(setq electric-indent-chars (remq ?\n electric-indent-chars))
(setq frame-title-format "%b")
(setq inhibit-startup-message t)
(setq initial-frame-alist '((width . 100) (height . 60)))
(setq-default auto-save-default nil)
(setq-default kill-whole-line t)
(setq-default make-backup-files nil)
(setq visible-bell t)
