;; local elisp
(add-to-list 'load-path
             (expand-file-name
              "~/elisp")
             )

;; LOAD CEDET 1.0 tools
(load "cedet/common/cedet.el")
;;(require 'cedet)

(global-ede-mode 1)

;; enable semantic minor modes
;(semantic-load-enable-code-helpers)
(semantic-load-enable-gaudy-code-helpers)
;(semantic-load-enable-all-exuberent-ctags-support)
(setq semantic-load-turn-useful-things-on t)


(setq semanticdb-default-save-directory "~/pakki/semantic.cache")

;; add ecb installation
(add-to-list 'load-path
             (expand-file-name
              "~/elisp/ecb"))

(require 'ecb)

;;(require 'ecb-autoloads)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-kill-buffer-clears-history (quote auto))
 '(ecb-layout-name "left1")
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote (("~/proj/src" "src") ("/Users/ragga/proj/ext-src" "ext-src")))))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2)))


;; Startup
(defconst animate-n-steps 20)
(defun emacs-reloaded ()
  (animate-string (concat ";; Initialization successful, welcome to "
                          (substring (emacs-version) 0 16)
                          ".")
                  0 0)
  (newline-and-indent) (newline-and-indent))
(add-hook 'after-init-hook 'emacs-reloaded)

(put 'upcase-region 'disabled nil)

;; update TAGS
(visit-tags-table "~/pakki/TAGS")
