(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(package-refresh-contents)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(window-divider-mode)
;; (setq mouse-autoselect-window t)
 (global-display-line-numbers-mode)
 (use-package doom-themes
   :ensure t
   :config
   ;; Global settings (defaults)
   (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
	 doom-themes-enable-italic t) ; if nil, italics is universally disabled
   (load-theme 'doom-vibrant t)

   ;; Enable flashing mode-line on errors
   (doom-themes-visual-bell-config)
   ;; Enable custom neotree theme (all-the-icons must be installed!)
   (doom-themes-neotree-config)
   ;; Corrects (and improves) org-mode's native fontification.
   (doom-themes-org-config))
 ;;(load-theme 'monokai t)
 (set-default 'truncate-lines t)
 (setq use-dialog-box nil)
 (setq doom-themes-treemacs-enable-variable-pitch nil)
 ;;(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
 ;;(add-to-list 'default-frame-alist '(fullscreen . maximized))

 (dolist (mode '(org-mode-hook
		 term-mode-hook
		 shell-mode-hook
		 eshell-mode-hook
		 treemacs-mode-hook
		 ))
   (add-hook mode(lambda() (display-line-numbers-mode 0))))

(global-set-key "\C-cd" 'kill-whole-line)
      (defun kill-other-buffers ()
	"Kill all other buffers."
	(interactive)
	(mapc 'kill-buffer (delq (current-buffer) (buffer-list))))
      (global-set-key (kbd "C-x C-b") 'kill-other-buffers)
      (global-set-key (kbd "C-z") 'undo-tree-undo)
      (global-set-key (kbd "C-o") 'undo-tree-redo)
      (defun reload-dotemacs ()
	(interactive)
	(load-file "~/.emacs.d/init.el"))
      (global-set-key (kbd "C-x e") 'reload-dotemacs)

  (use-package all-the-icons)
  (when (display-graphic-p)
  (require 'all-the-icons))
;; or
(use-package all-the-icons
  :if (display-graphic-p))

(use-package dashboard
:ensure t
:config
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
(setq dashboard-banner-logo-title "Bem-vinda, Bruna!")
(setq dashboard-startup-banner 3)
(setq dashboard-center-content t))
(image-type-available-p 'png)
(image-type-available-p 'jpg)
(setq dashboard-startup-banner "~/.emacs.d/touhou/marisa.png"):

(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq gc-cons-threshold 100000000)
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode go-mode rust-mode
		    js-mode js2-mode typescript-mode web-mode
		    c-mode c++-mode objc-mode yaml-mode svelte-mode) . lsp-deferred)
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(setq lsp-enable-indentation nil)

;; YAML
(add-hook 'yaml-mode-hook
	  (lambda ()
	    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
(use-package apheleia
  :config
  (setf (alist-get 'prettier apheleia-formatters)
	'(npx "prettier"
	      "--trailing-comma"  "es5"
	      "--bracket-spacing" "true"
	      "--single-quote"    "true"
	      "--semi"            "false"
	      "--print-width"     "100"
	      file))
  (add-to-list 'apheleia-mode-alist '(rjsx-mode . prettier))
  (apheleia-global-mode t))
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'js-mode-hook #'aggressive-indent-mode)
(add-hook 'typescript-mode-hook #'aggressive-indent-mode)
(add-hook 'yaml-hook #'aggressive-indent-mode)

(use-package centaur-tabs
 :demand
 :config
 (centaur-tabs-mode t)
 (defun centaur-tabs-buffer-groups ()
       "Use as few groups as possible."
       (list (cond ((string-equal "*" (substring (buffer-name) 0 1))
                    (cond ((string-equal "eglot" (downcase (substring (buffer-name) 1 6)))
                           "Eglot")
                          (t
                           "Tools")))
                   ((string-equal "magit" (downcase (substring (buffer-name) 0 5)))
                    "Magit")
                   (t
                    "Default"))))
 (setq centaur-tabs-style "bar")
 (setq centaur-tabs-height 32)
 (setq centaur-tabs-set-icons t)
 (setq centaur-tabs-set-bar 'left)
   (centaur-tabs-headline-match)
 ;;(setq x-underline-at-descent-line t)
 ;;(setq centaur-tabs-close-button "󰅙")
  :bind
 ("M-<left>" . centaur-tabs-backward)
 ("M-<right>" . centaur-tabs-forward))
 (add-hook 'treemacs-mode-hook 'centaur-tabs-local-mode)
 (add-hook 'vterm-mode-hook 'centaur-tabs-local-mode)

(use-package undo-tree)
(global-undo-tree-mode)