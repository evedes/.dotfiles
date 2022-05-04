(provide 'ui)

;; set font sizes
(defvar efs/default-font-size 135)
(defvar efs/default-variable-font-size 135)

;; make frame transparency overridable
(defvar efs/frame-transparency '(90 . 90))

;; disable ui stuff
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)

;; disable startup message
(setq inhibit-startup-message t)

;; disable beep and enable visual bell
(setq visible-bell t)

;; add line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

;; disable line numbers for certain modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Set frame transparency
(set-frame-parameter (selected-frame) 'alpha efs/frame-transparency)
(add-to-list 'default-frame-alist `(alpha . ,efs/frame-transparency))
;; (set-frame-parameter (selected-frame) 'fullscreen 'maximized)
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))
;
;; Set fonts
(set-face-attribute 'default nil :font "JetBrainsMonoMedium Nerd Font" :height efs/default-font-size)
(set-face-attribute 'fixed-pitch nil :font "JetBrainsMonoMedium Nerd Font" :height efs/default-font-size)
(set-face-attribute 'variable-pitch nil :font "JetBrainsMonoMedium Nerd Font" :height efs/default-variable-font-size :weight 'regular)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; themes
(use-package doom-themes
  :init (load-theme 'doom-one t))

(use-package all-the-icons)

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-heig;ht 15
            )))

(use-package magit
  :commands magit-status
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

;; NOTE: Make sure to configure a GitHub token before using this package!
;; - https://magit.vc/manual/forge/Token-Creation.html#Token-Creation
;; - https://magit.vc/manual/ghub/Getting-Started.html#Getting-Started
(use-package forge
  :after magit)

(use-package beacon
 :config
 (progn
   (beacon-mode 1)
   (setq beacon-size 10)
   (setq beacon-color "#ca6768")
   (setq beacon-blink-duration 0.2)
   (setq beacon-blink-when-window-scrolls t)
   (setq beacon-blink-when-window-changes t)
   (setq beacon-blink-when-point-moves-horizontally 20)
   (setq beacon-blink-when-point-moves-vertically 10)))

;; replace buffer with ibuffer
(global-set-key (kbd "C-x C-b") #'ibuffer)
