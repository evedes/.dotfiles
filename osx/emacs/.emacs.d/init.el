(setq inhibit-startup-message t)

(menu-bar-mode -1)
(scroll-bar-mode -1)                                              ;; Disable visible scrollbar
(tool-bar-mode -1)                                                ;; Disable the toolbar
(tooltip-mode -1)                                                 ;; Disable tooltips
(set-fringe-mode 10)                                              ;; Give some breathing room
(fset 'yes-or-no-p 'y-or-n-p)                                     ;; Simplify yes-or-no to y-or-n
(add-to-list 'default-frame-alist '(fullscreen . maximized))      ;; Open Emacs maximized
(setq visible-bell t)                                             ;; Set up the visible bell
(setq-default indent-tabs-mode nil)                               ;; Don't use tabs to indent
(setq gc-cons-threshold 50000000)                                 ;; Reduce GC frequency to honly happen on each 50M
(setq large-file-warning-threshold 100000000)                     ;; Warn when opening files biiger than 100M

(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font Mono" :height 120)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package command-log-mode)

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done)
	 ("C-l" . ivy-alt-done)
	 ("C-j" . ivy-next-line)
	 ("C-k" . ivy-previous-line)
	 :map ivy-switch-buffer-map
	 ("C-k" . ivy-previous-line)
	 ("C-l" . ivy-done)
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-k" . ivy-previous-li)
	 ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibufer-history)))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))

(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package doom-themes
  :init (load-theme 'doom-vibrant t))

(use-package all-the-icons
  :if (display-graphic-p)
  :commands all-the-icons-install-fonts
  :init
  (unless (find-font (font-spec :name "all-the-icons"))
    (all-the-icons-install-fonts t)))

(use-package all-the-icons-dired
  :if (display-graphic-p)
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (when (file-directory-p "~/SideProjects")
    (setq projectile-project-search-path '("~/SideProjects")))
  (setq projectile-swith-project-action #'projectile-dired))

(use-package counsel-projectile
  :config (counsel-projectile-mode))

(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package windmove
  ;; :defer 4
  :ensure t
  :config
  ;; use command key on Mac
  (windmove-default-keybindings 'super)
  ;; wrap around at edges
  (setq windmove-wrap-around t))

(use-package buffer-move
  :ensure t
  :config
  (global-set-key (kbd "<C-M-up>") 'buf-move-up)
  (global-set-key (kbd "<C-M-down>") 'buf-move-down)
  (global-set-key (kbd "<C-M-left>") 'buf-move-left)
  (global-set-key (kbd "<C-M-right>") 'buf-move-right))

;; TERMS

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

;; LANGUAGES

(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package clojure-mode
  :ensure t
  :config
    (add-hook 'clojure-mode-hook #'paredit-mode)
    (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
    (setq clojure-indent-style :always-indent))

(use-package cider
  :ensure t
  :config
  (setq nrepl-log-messages t)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'paredit-mode)
  (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
  (setq cider-repl-pop-to-buffer-on-connect t)
  (setq cider-show-error-buffer t)
  (setq cider-auto-select-error-buffer t))

(use-package paredit
  :ensure t
  :config
  (add-hook 'emacs-lisp-mode-hook #'paredit-mode)
  ;; enable in the *scratch* buffer
  (add-hook 'lisp-interaction-mode-hook #'paredit-mode)
  (add-hook 'ielm-mode-hook #'paredit-mode)
  (add-hook 'lisp-mode-hook #'paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'paredit-mode))

;; Highlights parens as pairs as the cursor moves
(use-package paren
  :ensure t
  :config
  (show-paren-mode +1))

(use-package whitespace
  :ensure t
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook #'whitespace-mode))
  (add-hook 'before-save-hook #'whitespace-cleanup)
  :config
  (setq whitespace-line nil)
  (setq whitespace-line-column 80)
  (setq whitespace-style '(face tabs empty trailing lines-tail)))

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(use-package beacon
  :ensure t
  :config
  (progn
    (beacon-mode 1)
    (setq beacon-size 10)
    (setq beacon-color "#C57BDB")
    (setq beacon-blink-duration 0.2)
    (setq beacon-blink-when-window-scrolls t)
    (setq beacon-blink-when-window-changes t)
    (setq beacon-blink-when-point-moves-horizontally 20)
    (setq beacon-blink-when-point-moves-vertically 10)))

(defun efs/display-startup-time ()
  (message "Emacs loaded in %s with %d garbage collections."
           (format "%.2f seconds"
                   (float-time
                   (time-subtract after-init-time before-init-time)))
           gcs-done))
