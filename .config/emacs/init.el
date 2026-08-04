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

  :custom
  (visible-bell 1)
  (inhibit-startup-screen t)
  (column-number-mode t)
  (create-lockfiles nil)
  (make-backup-files nil)
  
  :config
  (global-display-line-numbers-mode)
  (menu-bar--display-line-numbers-mode-relative)
  (add-to-list 'default-frame-alist
               '(font . "Hack Regular-10"))
  
  :bind
  ("C-c f" . 'toggle-frame-fullscreen))

(use-package auto-dark
  :custom
  (auto-dark-themes '((wombat) (leuven)))
  (auto-dark-polling-interval-seconds 0)
  (auto-dark-allow-osascript nil)
  (auto-dark-allow-powershell nil)
    
  :init (auto-dark-mode))

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
  ("C-c d" . eglot-find-declaration)
  ("C-c i" . eglot-find-implementation)
  ("C-c r" . eglot-rename))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(auto-dark rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
