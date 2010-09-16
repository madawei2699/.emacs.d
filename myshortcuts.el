(global-set-key [f11] 'fullscreen)
(global-set-key (kbd "<C-return>") 'duplicate-line)
(global-set-key (kbd "M-RET") 'duplicate)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(global-set-key (kbd "<M-f4>") 'cua-kill-emacs)
(global-set-key (kbd "C-x C-c") 'cua-kill-emacs)
(global-set-key [C-f4] 'cua-emul-kill-buffer)
(global-set-key [C-tab] 'cua-emul-next-buffer)
(global-set-key [C-S-iso-lefttab] 'cua-emul-previous-buffer)
(global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C-M-+") 'text-scale-decrease) 
(global-set-key [f1] 'toggle-selective-display)
(global-set-key (kbd "C-x M-k") 'kill-all-saved-buffers)
(defalias 'rr 'replace-regexp)

(add-hook 'scheme-mode-hook
 (lambda ()
 (define-key scheme-mode-map (kbd "C-M-/") 'insert-lambda)))

(add-hook 'doc-view-mode-hook
 (lambda ()
(define-key doc-view-mode-map (kbd "C-+") 'doc-view-enlarge)
(define-key doc-view-mode-map (kbd "C-M-+") 'doc-view-shrink))) 

;(dotimes (i 9)
;  (let* ((str-i (int-to-string (+ i 1))) 
;	 (switch-fn (intern (concat "switch-to-win-" str-i))))
;    (eval `(defun ,switch-fn () (interactive) (switch-window ,i)))    
;    (global-set-key (eval `(kbd ,(concat "M-" str-i)))  switch-fn)))


  (defun ido-my-keys ()
    "Add my keybindings for ido."
    (when (eq ido-cur-item 'file)
      (define-key ido-mode-map (kbd "ESC DEL") 'ido-delete-backward-updir)
      (define-key ido-mode-map (kbd "C-e") 'ido-my-edit-input)
      (define-key ido-mode-map (kbd "<backspace>") 'ido-my-edit-input)
     ))

(provide 'myshortcuts)