(setq column-number-mode t)

(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives
'("MELPA Stable" . "http://stable.melpa.org/packages/") t)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (yaml-mode flycheck-irony irony ## flycheck clang-format rainbow-delimiters))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq c-default-style "bsd"
      c-basic-offset 4)

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
             '(font . "xos4 Terminess Powerline-8"))

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; enable rainbow delimiters (highlight braces)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; CODING STYLE GLOBAL
;; warn on weird spacing / tabs
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

(require 'clang-format)
(global-set-key (kbd "C-c i") 'clang-format-region)
(global-set-key (kbd "C-c u") 'clang-format-buffer)

;; # LANGUAGES
(show-paren-mode 1)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(global-unset-key (kbd "C-z"))

(setq frame-title-format '("%f"))

(set-frame-font "xos4 Terminess Powerline" nil t)

;; enable rainbow delimiters (highlight braces)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
