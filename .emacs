(global-set-key "\C-z" 'up-one)
(global-font-lock-mode 1)
(set 'global-font-lock-mode t)
 (setq display-time-day-and-date t
                display-time-24hr-format t)
             (display-time)
(add-hook 'c-mode-common-hook
  (lambda ()
      (require 'doxymacs)
          (doxymacs-mode t)
              (doxymacs-font-lock)))


(defun show-file-name ()
  "Show the full path file name in the minibuffer."
    (interactive)
      (message (buffer-file-name)))

(global-set-key [C-f1] 'show-file-name) ; Or any other key you want

(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
              '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))
;; ace jump mode major function
;; 
(add-to-list 'load-path "~/.emacs.d/ace-jump-mode/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; 
;; enable a more powerful jump back function from ace jump mode
;;
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;;If you use viper mode :
;;(define-key viper-vi-global-user-map (kbd "SPC") 'ace-jump-mode)
;;If you use evil
;;(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)
