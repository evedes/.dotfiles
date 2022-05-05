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

;; Disable line numbers for certain modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Set fonts
(set-face-attribute 'default nil :font "JetBrainsMonoMedium Nerd Font" :height efs/default-font-size)

(set-face-attribute 'fixed-pitch nil :font "JetBrainsMonoMedium Nerd Font" :height efs/default-font-size)

(set-face-attribute 'variable-pitch nil :font "JetBrainsMonoMedium Nerd Font" :height efs/default-variable-font-size :weight 'regular)

(org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
      (python . t)))


(push '("conf-unix" . conf-unix) org-src-lang-modes)

;; Automatically tangle our Emacs.org config file when we save it
(defun efs/org-babel-tangle-config ()
  (when (string-equal (buffer-file-name)
                      (expand-file-name "~/.dotfiles/emacs/notes/emacs.org"))
    ;; Dynamic scoping to the rescue
    (let ((org-confirm-babel-evaluate nil))
      (org-babel-tangle))))

(add-hook 'org-mode-hook (lambda () (add-hook 'after-save-hook #'efs/org-babel-tangle-config)))
