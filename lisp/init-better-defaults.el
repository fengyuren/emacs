(setq ring-bell-function 'ignore)

(global-linum-mode t)

(global-auto-revert-mode t)

(setq make-backup-files nil)

(setq auto-save-default nil)

(recentf-mode 1)

(require 'recentf)
(setq recentf-max-menu-item 25)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;激活popwin
(require 'popwin)
(popwin-mode t)

(package-initialize)

(electric-indent-mode -1)

;;使用下面的配置文件将删除功能配置成与其他图形界面的编辑器相同，即当你选中一段文字 之后输入一个字符会替换掉你选中部分的文字。
(delete-selection-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

(defun indent-buffer ()
    "Indent the currently visited buffer."
    (interactive)
 reveal-in-osx-finder   It is bound to RET, a.
(indent-rSpacemacsegion (point-min) (point-max)))

(defun indent-region-or-buffer ()
    "Indent a region if selected, otherwise the whole buffer."
    (interactive)
    (save-excursion
      (if (region-active-p)
          (progn
             (indent-region (region-beginning) (region-end))
            (message "Indented selected region."))
        (progn
          (indent-buffer)
          (message "Indented buffer.")))))


(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

(provide 'init-better-defaults)
