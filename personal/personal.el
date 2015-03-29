(setq js-indent-level 2)
(setq jsx-indent-level 2)
(setq js2-basic-offset 2)
(setq scss-compile-at-save nil)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)
(setq auto-mode-alist (cons '("\\.hamljs\\'" . haml-mode) auto-mode-alist))
(setq ido-use-filename-at-point nil) ; Fix to stop pinging Indonesia
; (setq ffap-machine-p-known 'reject) ; Prevent ido from pinging if you decide you like find-file-at-point

; turn off smartparens
(add-hook 'prelude-prog-mode-hook (lambda () (smartparens-mode -1)) t)

;; do not cleanup whitespace on save
(setq prelude-clean-whitespace-on-save nil)

(setq whitespace-line-column 115) ;; limit line length

; wrong wayyyy tooo often
(setq electric-indent-mode nil)

;; rubocop was really annoying so I turned off flycheck
(add-hook 'prog-mode-hook (lambda () (setq global-flycheck-mode nil) (setq flycheck-mode nil)) t)

;; turn off flyspell
(setq prelude-flyspell nil)

;; Holy crap, prelude tips are annoying
(defun prelude-tip-of-the-day () nil)

;; custom stuff installed by Jen
(require 'shell-command)
(shell-command-completion-mode)

(require 'bash-completion)
(bash-completion-setup)
