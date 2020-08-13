(setenv "PATH" (concat "/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin" (getenv "PATH")))

(when (eq system-type 'darwin)
  ;; use all the special keys on the mac keyboard
  (setq ns-function-modifier 'super
        mac-right-command-modifier 'meta
	mac-option-modifier 'none
        mac-right-option-modifier 'alt
        mac-command-modifier 'control))
        
