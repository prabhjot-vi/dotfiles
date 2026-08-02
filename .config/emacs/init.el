(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(require 'use-package)
(setq use-package-always-ensure t)

(use-package emacs
  :ensure nil
  
  :init
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (load-theme 'wombat)

  :custom
  (visible-bell 1)
  (inhibit-startup-screen t)
  (column-number-mode t)
  (create-lockfiles nil)
  (make-backup-files nil)
  
  :config
  (global-display-line-numbers-mode)
  (menu-bar--display-line-numbers-mode-relative)
  
  :bind
  ("C-c f" . 'toggle-frame-fullscreen))

(use-package which-key
  :ensure nil
  :config
  (which-key-mode 1))

(use-package rust-mode)

(use-package eglot
  :ensure nil
  :hook
  ('c-mode . 'eglot-ensure)
  ('c++-mode . 'eglot-ensure)
  ('rust-mode . 'eglot-ensure)
  
  :bind
  ("C-c r" . eglot-rename))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
