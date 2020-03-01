## NEOTREE

### SHORTCUTS

| Description       | Shortcuts                                                    |
| ---------------   | -------------                                                |
| n                 | next line                                                    |
| p                 | previous line                                                |
| SPC or RET or TAB | open current item if it is a file or fold/unfold current dir |
| U                 | go up a directory                                            |
| g                 | refresh                                                      |
| A                 | maximize / minimize the neotree window                       |
| H                 | toggle display hidden files                                  |
| O                 | recursively open a directory                                 |
| C-c C-n           | create a file or dir if filename ends with a /               |
| C-c C-d           | delete a file or dir                                         |
| C-c C-c           | change the root directory                                    |
| C-c C-p           | copy a file or a directory                                   |


### CONFIG FILE

```
;; Neotree
;; https://github.com/jaypei/emacs-neotree

(require 'neotree)
(require 'all-the-icons)

;; every time when the neotree window is  opened, it will try to find current
;; file and jump to node.
(setq-default neo-smart-open t)

;; change root automatically when running `projectile-switch-project`
(setq projectile-switch-project-action 'neotree-projectile-action)

(global-set-key [f2] 'neotree-toggle)

(setq neo-theme (if window-system 'icons 'nerd)) ; 'classic, 'nerd, 'ascii, 'arrow

(setq neo-vc-integration '(face char))

(setq neo-show-hidden-files t)

(setq neo-toggle-window-keep-p t)

(setq neo-force-change-root t)

(add-hook 'neotree-mode-hook
          (lambda ()
            (setq-local mode-line-format nil)
            (setq-local display-line-numbers nil)
            (local-set-key (kbd "C-s") 'isearch-forward)
            (local-set-key (kbd "C-M-s") 'isearch-forward-regexp)
            (local-set-key (kbd "C-r") 'isearch-backward)
            (local-set-key (kbd "C-M-r") 'isearch-backward-regexp)))

(add-to-list 'all-the-icons-icon-alist
             '("^build\.boot$" all-the-icons-alltheicon "clojure-line" :height 1.0 :face all-the-icons-blue :v-adjust 0.0))

;; face customizations

(set-face-attribute 'neo-vc-edited-face nil
                    :foreground "#E2C08D")

(set-face-attribute 'neo-vc-added-face nil
                    :foreground "green4")

(provide 'setup-neotree)
```
