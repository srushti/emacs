(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-compilation-buffer-names (quote (("*vc*") ("*vc-diff*") ("*Apropos*") ("*eshell*") ("*Occur*") ("*shell*" . t) ("\\*[cC]ompilation.*\\*" . t) ("\\*i?grep.*\\*" . t) ("*Help*") ("*Completions*") ("*Backtrace*") ("*Compile-log*") ("*Messages*") ("*magit: " . t))))
 '(ecb-compile-window-height 6)
 '(ecb-compile-window-width (quote frame))
 '(ecb-layout-name "left7")
 '(ecb-maximize-ecb-window-after-selection t)
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-indent 2)
 '(ecb-vc-enable-support t)
 '(ecb-windows-width 0.2)
 '(linum-format "%4d ")
 '(show-paren-mode t)
 '(transient-mark-mode t))
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
