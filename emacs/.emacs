;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)    

;;; Load all subdirectories
;;(normal-top-level-add-subdirs-to-load-path)

;;; Set Default Directory
;;(setq default-directory "C:/Users/sehoonha")

;; (add-to-list 'load-path "/usr/share/")
;; (add-to-list 'load-path "/usr/local/share/")

;;(set-face-font 'default "Source Code Pro-11")
;; (set-face-font 'default "-unknown-DejaVu Sans Mono-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1")



;;; Default Windows Position & Size
(set-frame-position (selected-frame) 0 0)
(set-frame-width (selected-frame) 600)
(set-frame-height (selected-frame) 300)

(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; Auto Complete
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
;; (require 'auto-complete-config)
;; (ac-config-default)
;; (define-key ac-mode-map (kbd "C-t") 'auto-complete-mode)
;; (add-to-list 'ac-dictionary-directories "/usr/share/emacs/site-lisp/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)


;;; Basic Settings
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode nil)
(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)
(global-font-lock-mode t)
(setq fon-lock-maximum-decoration t)

;;; Set the mark region visible
(setq transient-mark-mode t)

;;; Indentation
; C++ Coding Style
(setq c-default-style "k&r")
; (setq c-default-style "cc-mode")
; (setq c-default-style "gnu")
; (setq c-default-style "bsd")
; (setq c-default-style "stroustrup")
; (setq c-default-style "whitesmith")

; Auto-Indentation w/ enter key
(load "cc-mode")
(define-key c++-mode-map "\r" 'reindent-then-newline-and-indent)
(define-key c-mode-map "\r" 'reindent-then-newline-and-indent)
(define-key java-mode-map "\r" 'reindent-then-newline-and-indent)
(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map "\C-m" 'newline-and-indent)))

;;; Auto-Indentation w/ enter key #2
;;;(require 'cc-mode)
;;;(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

;;; Auto-Insertion of a new line w/ '{'
;; (add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))

;;; Tab Setting
(setq c-basic-offset 4
          tab-width 4
          indent-tabs-mode nil)
;; (c-set-offset 'innamespace 0)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; ;;; google c/c++ coding style
;; (require 'google-c-style)
;; (add-hook 'c-mode-common-hook 'google-set-c-style)
;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)

;;; color-theme setting
;;; http://www.emacswiki.org/cgi-bin/wiki/ColorTheme
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)


;;; Column number mode
(setq column-number-mode t)

;; ;;; Processing Mod
;; (autoload 'processing-mode "processing-mode" "Processing mode" t)
;; (add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))
;; (setq processing-location "~/Dev/processing-1.0.5/")


;;; cedet

;;(load-file "~/.emacs.d/site-lisp/cedet-1.1/common/cedet.el")
;;(global-ede-mode 1)                      ; Enable the Project management system
;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 

;; (global-srecode-minor-mode 1)            ; Enable template insertion menu
;; (setq semanticdb-default-save-directory "~/.emacs.d/#semanticdb.cache#")
;; (setq semantic-load-turn-useful-things-on t)
;; (global-set-key [(meta return)] 'semantic-ia-complete-symbol-menu)

;; ;;; ECB
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb-2.40")
;; (require 'ecb)
;; (require 'ecb-autoloads)
;; (custom-set-variables
;;   ;; custom-set-variables was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(ecb-auto-activate t)
;;  '(ecb-options-version "2.40")
;;  '(ecb-windows-width 40))

;; ;; customize the keys for ECB
;; (define-key ecb-mode-map (kbd "M-1") 'ecb-goto-window-directories)
;; (define-key ecb-mode-map (kbd "M-2") 'ecb-goto-window-sources)
;; (define-key ecb-mode-map (kbd "M-3") 'ecb-goto-window-methods)
;; (define-key ecb-mode-map (kbd "M-4") 'ecb-goto-window-history)
;; (define-key ecb-mode-map (kbd "M-5") 'ecb-goto-window-compilation)
;; (define-key ecb-mode-map (kbd "M-0") 'ecb-goto-window-edit1)

;;; Eassist
(defun my-eassist-common-hook ()
   (define-key c-mode-base-map (kbd "M-o") 'eassist-switch-h-cpp)
   (define-key c-mode-base-map (kbd "M-m") 'eassist-list-methods)
   (define-key c-mode-base-map (kbd "C-x a") 'align)
   )
(add-hook 'c-mode-common-hook 'my-eassist-common-hook)

;; ;;; Toggle Flymake
;; (require 'flymake)
;; (global-set-key [f6] 'flymake-mode)
;; (global-set-key (kbd "C-x <up>") 'flymake-goto-prev-error)
;; (global-set-key (kbd "C-x <down>") 'flymake-goto-next-error)
;; (global-set-key (kbd "C-x SPC") 'flymake-display-err-menu-for-current-line)

;; (custom-set-faces 
;;  '(flymake-errline ((((class color)) (:background "DarkRed")))) 
;;  '(flymake-warnline ((((class color)) (:background "DarkBlue"))))) 


;;; Short cut to compile command
(global-set-key [f7] 'compile)
(setq compile-command "make")

;;; Short cut to refresh file
(defun refresh-file ()
  (interactive)
  (revert-buffer t t t)
  )
(global-set-key [f5] 'refresh-file)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (fboundp 'winner-mode)
  (winner-mode 1))

;; Close the compilation window if there was no error at all.
;; http://www.emacswiki.org/emacs/ModeCompile
(setq compilation-finish-functions 'compile-autoclose)
(defun compile-autoclose (buffer string)
  (cond ((string-match "finished" string)
         (message "Build maybe successful: closing window.")
         (run-with-timer 1 nil                      
                         'delete-window              
                         (get-buffer-window buffer t)))
        (t                                                                    
         (message "Compilation exited abnormally: %s" string))))

;;; Highlight Current Line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#555")

;;; Show Current Line Number
; http://stud4.tuwien.ac.at/~e0225855/linum/linum.html
(require 'linum)
(global-linum-mode 1)

;;; Octave-mode
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

;;; Member expand function
(autoload 'expand-member-functions "member-functions" "Expand C++ member function declarations" t)
(add-hook 'c++-mode-hook (lambda () (local-set-key "\C-cm" #'expand-member-functions)))


;;; Clipboard
(setq x-select-enable-clipboard t)

;; ;;; Scons
;; (setq auto-mode-alist
;;       (cons '("SConstruct" . python-mode) auto-mode-alist))
;; (setq auto-mode-alist
;;       (cons '("SConscript" . python-mode) auto-mode-alist))

;; ;;; TRAMP
;; (setq tramp-default-method "ssh")

;; ;;; flyspell-mode
;; (global-set-key [f11] 'flyspell-mode)
;; (global-set-key [f12] 'ispell-buffer)


;;; mercurial
; (require 'mercurial)

;; ;;; Mac specific
;; (setq mac-option-key-is-meta nil)
;; (setq mac-command-key-is-meta t)
;; (setq mac-command-modifier 'meta)
;; (setq mac-option-modifier nil)

;; ;;; protobuf-mode
;; (require 'protobuf-mode)
;; (autoload 'protobuf-mode "protobuf-mod" nil t)
;; (setq auto-mode-alist
;;       (cons '("\\.proto$" . protobuf-mode) auto-mode-alist))

;; ;;; CMake-mode
;; (setq load-path (cons (expand-file-name "/dir/with/cmake-mode") load-path))
;; (require 'cmake-mode)
;; (setq auto-mode-alist
;;       (append '(("CMakeLists\\.txt\\'" . cmake-mode)
;;                 ("\\.cmake\\'" . cmake-mode))
;;               auto-mode-alist))

;; ;;; Lua-mode
;; ;; (require 'lua-mode)
;; (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
;; (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
;; (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))


;;;; My own macros
(defun sha9-current-path() (or load-file-name buffer-file-name))

(defun sha9-parent-dir() 
  (file-name-nondirectory
   (substring (file-name-directory (sha9-current-path)) 0 -1)
   )
  )

(defun sha9-filename() 
  (file-name-sans-extension 
   (file-name-nondirectory (sha9-current-path))
   )
  ;; (sha9-current-path))
  )

(defun sha9-class-name()
  (replace-regexp-in-string "_" "" (capitalize (sha9-filename)) )
  )

(defun sha9-header-name() 
  (format "%s_%s" (upcase (sha9-parent-dir)) (upcase (sha9-filename)) )
  )

(defun sha9-expand-header ()
  "expand cpp style header"
  ;; (interactive "senter header definition name: ")
  (interactive)

  (insert "#ifndef " (sha9-header-name) "_H\n")
  (insert "#define " (sha9-header-name) "_H\n")
  (insert "\n")
  (insert "namespace " (downcase (sha9-parent-dir)) " {\n")
  (insert "\n\n")
  (insert "} // namespace " (downcase (sha9-parent-dir)) "\n")
  (insert "\n")
  (insert "#endif // #ifndef " (sha9-header-name) "_H\n")
  (message "the header file is expanded with [%s]" (sha9-header-name))
  )

(defun sha9-expand-namespace ()
  "expand cpp namespace"
  (interactive "")
  (insert "namespace " (downcase (sha9-parent-dir)) " {\n")
  (insert "\n\n")
  (insert "} // namespace " (downcase (sha9-parent-dir)) )
  (message "the namespace is expanded with [%s]" (upcase (sha9-parent-dir)) )
  )


(defun sha9-test ()
  (interactive)
  (message "results: [%s]" (upcase "asdf"))
  )


;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))
(transparency 95)

(eval-when-compile (require 'cl))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 50))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

;; (require 'evernote-mode)
;; (setq evernote-username "sehoon.ha@gmail.com") ; optional: you can use this username as default.
;; (setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) ; option
;; (global-set-key "\C-cec" 'evernote-create-note)
;; (global-set-key "\C-ceo" 'evernote-open-note)
;; (global-set-key "\C-ces" 'evernote-search-notes)
;; (global-set-key "\C-ceS" 'evernote-do-saved-search)
;; (global-set-key "\C-cew" 'evernote-write-note)
;; (global-set-key "\C-cep" 'evernote-post-region)
;; (global-set-key "\C-ceb" 'evernote-browser)

;; ('load-path)

;;yasnippet
;; (add-to-list 'load-path
;;               "~/.emacs.d/plugins/yasnippet")
;; (require 'yasnippet)
;; (yas-global-mode 1)




(global-set-key "\C-l" 'goto-line)

(defun scroll-up-one-line()
  (interactive)
  (scroll-up 1))

(defun scroll-down-one-line()
  (interactive)
  (scroll-down 1))

(global-set-key [\C-up] 'scroll-down-one-line)
(global-set-key [\C-down] 'scroll-up-one-line)

;;Turn on documentation in elisp mode
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
	     (turn-on-eldoc-mode)))
;;Turn on documentation in c mode
(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)

(put 'upcase-region 'disabled nil)

(setq default-directory "~/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doc-view-ghostscript-options (quote ("-dSAFER" "-dNOPAUSE" "-sDEVICE=png" "-dTextAlphaBits=4" "-dBATCH" "-dGraphicsAlphaBits=4" "-dQUIET")))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil))
