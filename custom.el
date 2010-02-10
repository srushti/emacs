(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 203 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(default-frame-alist (quote ((menu-bar-lines . 1) (cursor-type . box) (vertical-scroll-bars . right) (internal-border-width . 0) (left-fringe . 1) (right-fringe) (fringe) (tool-bar-lines . 0) (background-color . "#191717") (background-mode . dark) (border-color . "black") (cursor-color . "#A7A7A7") (foreground-color . "#D2DEC4"))))
 '(ecb-activation-selects-ecb-frame-if-already-active t)
 '(ecb-compilation-buffer-names (quote (("*vc*") ("*vc-diff*") ("*anything*") ("*Apropos*") ("*eshell*") ("*Occur*") ("*shell*" . t) ("\\*[cC]ompilation.*\\*" . t) ("\\*i?grep.*\\*" . t) ("*Help*") ("*Completions*") ("*Backtrace*") ("*Compile-log*") ("*Messages*") ("*magit: " . t))))
 '(ecb-compile-window-height 6)
 '(ecb-compile-window-temporally-enlarge (quote both))
 '(ecb-compile-window-width (quote frame))
 '(ecb-layout-name "left7")
 '(ecb-maximize-ecb-window-after-selection t)
 '(ecb-mode-line-display-window-number nil)
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-indent 2)
 '(ecb-vc-enable-support t)
 '(ecb-windows-width 0.2)
 '(line-number-mode t)
 '(linum-format "%4d ")
 '(ns-alternate-modifier (quote meta))
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t))
(c-mode)

(c-toggle-hungry-state)

(fset 'yes-or-no-p 'y-or-n-p)
(setq default-tab-width 2)

(setq rinari-tags-file-name "TAGS")
(setq my-global-projects-dirs (quote (
"~/Work/ruby/ror"
"~/Work/snippets"
)))

(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

(autoload 'mode-compile "mode-compile"
   "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)
 
(autoload 'mode-compile-kill "mode-compile"
 "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)

(defun ruby-outline-mode ()
  (interactive)
  (setq outline-regexp " *\\(def\\|if\\|when\\|do\\)"))

(setq textmate-gf-exclude 
  "/\\.|vendor|fixtures|tmp|log|build|\\.xcodeproj|\\.nib|\\.framework|\\.app|\\.pbproj|\\.pbxproj|\\.xcode|\\.xcodeproj|\\.bundle|\\.pyc|\\.elc|\\.jar")
(setq auto-mode-alist (cons '("Rakefile$" . ruby-mode) auto-mode-alist))

(global-set-key (kbd "A-D") "\M-w\C-y")
(setq highlight-current-line-globally t)
 '(show-paren-mode t)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
