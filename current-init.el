;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                           ;;
;;  ;; ;; ;;   PACKAGE MANAGEMENT  ;; ;; ;;  ;;
;;                                           ;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Define package repositories
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)


;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(load-file "~/.emacs.d/emacs-for-python/epy-init.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Customisations for Copy & Paste
;; And ability to use system clipboard
 '(delete-selection-mode t)
 '(kill-do-not-save-duplicates t)
 '(save-interprogram-paste-before-kill t)
 '(yank-pop-change-selection t)
 (setq x-select-enable-clipboard t)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-autojoin-channels-alist (quote (("freenode.net" "#python" "#clojure"))))
 '(erc-autojoin-mode t)
 '(erc-hide-list (quote ("JOIN" "KICK" "NICK" "PART" "QUIT" "Users on *")))
 '(erc-nick "_m___")
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(server-mode t)
 '(server-start nil)
 '(server-use-tcp t)
 '(server-window (quote pop-to-buffer))
 '(setq server-socket-dir t))
 ;; <--- end of custom-set-variables 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Session Management
(desktop-save-mode 1)
(setq history-length 250)
(add-to-list 'desktop-globals-to-save 'file-name-history)



;; Unbind C-z for suspending the session in terminal
(global-unset-key "\C-z")
