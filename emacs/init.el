(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-dracula))
 '(custom-safe-themes
   '("944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "1a7f3977bfd2022bf59f4ef0c26e14fb13668a1b6f67cc393b968a0a62ea146c" "b54bf2fa7c33a63a009f249958312c73ec5b368b1094e18e5953adb95ad2ec3a" default))
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(vterm-toggle all-the-icons dashboard centaur-tabs rainbow-mode undo-tree doom-modeline shell-pop apheleia aggressive-indent svelte-mode yaml-mode ## treemacs-tab-bar treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs doom-themes company))
 '(tool-bar-mode nil)
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((lsp-mode) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "SRC" :slant normal :weight normal :height 120 :width normal)))))
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(add-to-list 'default-frame-alist '(font . "Iosevka" ))
(set-face-attribute 'default t :font "Iosevka" )

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
