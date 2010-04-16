(setq load-path (cons  "~/.emacs.d/packages/growl" load-path))
(require 'growl)
;; need a smarter check than finished. like differentiate between rpec / other compilation modes
(defun growl-a-bit(buffer string)
	(cond ((string-match "finished" string)
		(growl "finished" (shell-command-to-string "fortune -s")))
		(0 (growl "fail" (shell-command-to-string "fortune -o -s")))))

(add-hook 'compilation-finish-functions 'growl-a-bit)
(provide 'growl-init)
