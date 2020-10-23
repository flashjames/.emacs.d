;;   apt-get install silversearcher-ag

(setq column-number-mode t)
(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(defun backtick ()
  "insert backtick"
  (interactive)
  (insert "`"))

(setq tab-width 2
      indent-tabs-mode nil)

(setq css-indent-offset 2)
(setq js-indent-level 2)
(setq jsx-indent-level 2)

;; y instead of yes
(defalias 'yes-or-no-p 'y-or-n-p)

;; Global keybindings
(global-set-key (kbd "C-,") 'comment-or-uncomment-region)

(setq visible-bell t)

(setq-default tab-width 1)


(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2)))
(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2
                                  tab-width 2
                                  indent-tabs-mode t)))
(setq c-basic-offset 2)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)
(setq mac-mouse-wheel-mode t)
(setq mac-mouse-wheel-smooth-scroll t)




(global-set-key "\M-(" (lambda () (interactive) (insert "{")))
(global-set-key "\M-)" (lambda () (interactive) (insert "}")))

(global-set-key "\M-8" (lambda () (interactive) (insert "[")))
(global-set-key "\M-9" (lambda () (interactive) (insert "]")))
(global-set-key "\M-<" (lambda () (interactive) (insert "|")))
(global-set-key "\M-2" (lambda () (interactive) (insert "@")))
(global-set-key "\M-/" (lambda () (interactive) (insert "\\")))
(global-set-key "\M-4" (lambda () (interactive) (insert "$")))
(global-set-key "\M-+" (lambda () (interactive) (insert "`")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(grep-find-ignored-directories
			(quote
				("SCCS" "RCS" "CVS" "MCVS" ".src" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "node_modules")))
 '(grep-find-ignored-files
			(quote
				(".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.dfsl" "*.pfsl" "*.d64fsl" "*.p64fsl" "*.lx64fsl" "*.lx32fsl" "*.dx64fsl" "*.dx32fsl" "*.fx64fsl" "*.fx32fsl" "*.sx64fsl" "*.sx32fsl" "*.wx64fsl" "*.wx32fsl" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "*min.js")))
 '(package-selected-packages
			(quote
				(markdown-mode json-mode auto-complete autopair web-mode less-css-mode))))


;; Bring emacs window to front when opening file with
;; emacsclient
;; https://emacs.stackexchange.com/questions/34737/start-emacsclient-with-focus-from-command-line
(add-hook 'server-switch-hook (lambda () (select-frame-set-input-focus (selected-frame))))

(defun really-kill-emacs ()
  "Like `kill-emacs', but ignores `kill-emacs-hook'."
  (interactive)
  (let (kill-emacs-hook)
    (kill-emacs)))
