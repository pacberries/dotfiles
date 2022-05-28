(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "a0be7a38e2de974d1598cf247f607d5c1841dbcef1ccd97cded8bea95a7c7639" "5f19cb23200e0ac301d42b880641128833067d341d22344806cdad48e6ec62f6" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175" "6c531d6c3dbc344045af7829a3a20a09929e6c41d7a7278963f7d3215139f6a7" "691cf7a75fe2c5935520a751138949fb30e1c7d4afb48644d995118e19704536" "e834961ffbbb44ead0b51e6e352b287b5e7e473212a77b4bbe97a1316877d79c" "7df458119f8a3e7878fd2a35ce8623f9e6aaf075cbc52063cec19a095758d3bf" "57741e77ead12a6f17ea4abbfad2982db353b62f0e658d66dc127115a63664cf" "07ef782ac2b2ce88279b1f56638944836ecbea2a339424b172e729a1eabf271b" "74265b5786d374cc2419e5711d273398141b4a3a2acac8d4f2b70bce91af6a39" "55f73862c32a4ac29b2bf12afe88130ca6d0773d44cb175c7ac2cecca2ff57fe" "7546050ababb966c7943dcf0bea78e00381327c350862d4f1dda6eac7092e22a" "17682ccb9027ef63e1063325eb5966e14bb60b90d9952d8a0adbbe253399ae8f" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "27a1dd6378f3782a593cc83e108a35c2b93e5ecc3bd9057313e1d88462701fcd" default))
 '(delete-selection-mode nil)
 '(exwm-floating-border-color "#15171b")
 '(fci-rule-color "#2c313a")
 '(global-display-line-numbers-mode t)
 '(highlight-tail-colors ((("#263936") . 0) (("#26353c") . 20)))
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#10151a" "#e74c3c"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151a" "#53df83"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151a" "#737c8c"))
 '(menu-bar-mode nil)
 '(objed-cursor-color "#e74c3c")
 '(package-selected-packages
   '(doom-themes autothemer go-mode solarized-theme base16-theme))
 '(pdf-view-midnight-colors (cons "#f8f8f0" "#21272e"))
 '(rustic-ansi-faces
   ["#21272e" "#e74c3c" "#53df83" "#ECBE7B" "#56b5c2" "#FFB8D1" "#56b6c2" "#f8f8f0"])
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#21272e")
 '(vc-annotate-color-map
   (list
    (cons 20 "#53df83")
    (cons 40 "#86d480")
    (cons 60 "#b9c97d")
    (cons 80 "#ECBE7B")
    (cons 100 "#ea9866")
    (cons 120 "#e87251")
    (cons 140 "#e74c3c")
    (cons 160 "#ef706d")
    (cons 180 "#f7939f")
    (cons 200 "#FFB8D1")
    (cons 220 "#f7949f")
    (cons 240 "#ef706d")
    (cons 260 "#e74c3c")
    (cons 280 "#ca5850")
    (cons 300 "#ad6464")
    (cons 320 "#907078")
    (cons 340 "#2c313a")
    (cons 360 "#2c313a")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono NL" :foundry "JB" :slant normal :weight normal :height 128 :width normal)))))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; Package configuration
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Install packages
(use-package gruvbox-theme)
(use-package go-mode)

;; Customize the theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/")
(load-theme 'gruvbox-dark-hard t)

;; set GUI options
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq line-number-mode t)
(set-fringe-mode 0)

;; Remove annoying message
(setq sml/no-confirm-load-theme t)

;; Bind F9 to toggle menu-bar-mode
(global-set-key [f9] 'toggle-menu-bar-mode-from-frame)

;; Change cursor type
(setq-default cursor-type 'bar) 

;; Zoom in and out with CTRL+/-
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)


