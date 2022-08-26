(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono 20" ))
(set-face-attribute 'default t
		    :font "DejaVu Sans Mono 20")
(set-face-attribute 'mode-line nil
		    :font "DejaVu Sans Mono-20")

(global-set-key (kbd "C-s") 'save-buffer) 
(global-unset-key (kbd "C-x C-s"))
(global-unset-key (kbd "C-x C-z"))

(cua-mode t)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(load-theme 'modus-vivendi t)

(global-set-key (kbd "C-c 1") (lambda() (interactive)(find-file "~/aamystuff/mystuff/index.org")))
(global-set-key (kbd "C-c 2") (lambda() (interactive)(find-file "~/aamystuff/phprefactor/phprefactor.org")))
(global-set-key (kbd "C-c 3") (lambda() (interactive)(find-file "~/aamystuff/life/life.org.gpg")))
(global-set-key (kbd "C-c 4") (lambda() (interactive)(find-file "~/aamystuff/emacs/emacs.org")))
(global-set-key (kbd "C-c i") (lambda() (interactive)(find-file "~/.emacs.d/myinit.org")))

(blink-cursor-mode 0)
(global-visual-line-mode)

;; do not show the startup screen.
(setq inhibit-startup-message t)

;; disable
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; disable git
(setq vc-handled-backends nil)

;; needed for hotkey startup
(setq frame-title-format "emacs")
