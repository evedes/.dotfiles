;; 00. General Settings and Tweaks

;; do not use 'init.el' for 'custom-*' code - use 'custom-file.el'
;; =================> NOTE: change custom-file.el to custom.el based
;; on brunex conf
(setq custom-file "~/.emacs.d/custom-file.el")
(load-file custom-file)

;; el-patch
(use-package el-patch
  :ensure t)

;; disable startup message
(setq inhibit-startup-message t)

;; set default path
(setq default-directory "/Users/edo/")

;; ido-yes-or-no
(use-package ido-yes-or-no
  :straight t
  :config
  (ido-yes-or-no-mode 1)
  (fset 'yes-or-no-p 'y-or-n-p))

;; garbage collection
;; reduce the freq of garbage collection by making it happen
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-treshold 50000000)

;; warning when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; fast-scroll =================> to implement

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; auto revert mode (reverts buffers automatically when underlying
;; files are changed externally
(global-auto-revert-mode t)

;; keep dired view updated if the contents of a directory change
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; disable  menubar, toolbar and scrollbar
(when window-system
  (tool-bar-mode 0)
  (menu-bar-mode 0)
  (global-hl-line-mode)
  (scroll-bar-mode -1))

;; # shortcut
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; y-or-n
;; ===================> NOTE: understand this better



;; set command key as meta
(setq mac-command-modifier 'meta)

;; exec-path-from-shell
(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

;; include melpa in the list of packages archives
(require 'package)
;; (package-initialize)

;; add 'melpa' to package-archives
(add-to-list 'package-archives
     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

;; replace buffer menu for ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; 01. UI Settings and Tweaks

(if (version< "27.0" emacs-version)
    (set-fontset-font
     "fontset-default" 'unicode "Apple Color Emoji" nil 'prepend)
  (set-fontset-font
   t 'symbol (font-spec :family "Apple Color Emoji") nil 'prepend))

;; all-the-icons
(use-package all-the-icons
  :ensure t
  :config (all-the-icons-install-fonts t))

;; doom themes
(use-package doom-themes
  :ensure doom-themes
  :requires (all-the-icons)
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-challenger-deep t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  (doom-themes-treemacs-config))

;; doom-modeline
(use-package doom-modeline
  :ensure t
  :requires (all-the-icons)
  :hook (after-init . doom-modeline-mode))

;; show line numbers
(use-package linum
  :ensure linum
  :config
  (setq linum-format " %3d ")
  (global-linum-mode nil))

;; highlight current line
(use-package hl-line
  :ensure hl-line
  :custom-face (hl-line ((t (:extend t))))
  :hook (after-init . global-hl-line-mode))

;; don't use tabs to ident
(setq-default indent-tabs-mode nil)

;; move between windows
(use-package windmove
  :ensure t
  :config
  (windmove-default-keybindings)
  ;; Make windmove work in org-mode:
  (add-hook 'org-shiftup-final-hook 'windmove-up)
  (add-hook 'org-shiftleft-final-hook 'windmove-left)
  (add-hook 'org-shiftdown-final-hook 'windmove-down)
  (add-hook 'org-shiftright-final-hook 'windmove-right))

;; buffer move
(use-package buffer-move
  :ensure t
  :config
  (global-set-key (kbd "<C-M-up>")     'buf-move-up)
  (global-set-key (kbd "<C-M-down>")   'buf-move-down)
  (global-set-key (kbd "<C-M-left>")   'buf-move-left)
  (global-set-key (kbd "<C-M-right>")  'buf-move-right))

;; ensure whitespace cleanup on save
(use-package whitespace
  :ensure t
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook #'whitespace-mode))
  (add-hook 'before-save-hook #'whitespace-cleanup)
  :config
  (setq whitespace-line-column 80)
  (setq whitespace-style '(face tabs empty trailing lines-tail)))


;; 02. Modes

;; Markdown Mode

(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown")
  :config
  (add-hook 'markdown-mode-hook #'linum-mode))

;; Company, Complete ANY

(use-package company-emoji
  :ensure company-emoji)

(use-package company
  :ensure t
  :bind (:map company-active-map
	      ("C-n" . company-select-next)
	      ("C-p" . company-select-previous))
  :config
  (setq company-idle-delay 0.5)
  (add-to-list 'company-backends 'company-emoji)
  (global-company-mode t))

;; 03. Terminal

(defun bb/term-toggle-mode ()
  "Toggles term between line mode and char mode"
  (interactive)
  (if (term-in-line-mode)
      (term-char-mode)
    (term-line-mode)))

(defun bb/term-paste (&optional string)
  (interactive)
  (process-send-string
   (get-buffer-process (current-buffer))
   (if string string (current-kill 0))))

(use-package multi-term
  :ensure t
  :config
  (setq multi-term-program "/bin/zsh")
  (setq term-bind-key-alist
    (list
    (cons "C-c C-c" 'term-interrupt-subjob)
    (cons "C-p"  'term-send-raw)
    (cons "C-n"  'term-send-raw)
    (cons "C-a"  'term-send-raw)
    (cons "C-e"  'term-send-raw)
    (cons "M-b"  'term-send-backward-word)
    (cons "M-f"  'term-send-forward-word)
    (cons "M-d"  'term-send-forward-kill-word)
    (cons "C-k"  'term-send-raw)))
  (add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)
            (define-key term-mode-map (kbd "C-c C-e") 'bb/term-toggle-mode)
            (define-key term-raw-map (kbd "C-c C-e") 'bb/term-toggle-mode)
            (define-key term-raw-map (kbd "C-y") 'bb/term-paste)
            (define-key term-raw-map (kbd "<M-backspace>") 'term-send-backward-kill-word)
            (define-key term-raw-map (kbd "M-[") 'multi-term-prev)
            (define-key term-raw-map (kbd "M-]") 'multi-term-next)
            )))
