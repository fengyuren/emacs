(setq ring-bell-function 'ignore)


(global-linum-mode t)

(global-auto-revert-mode t)

;;自定义补全内容
(abbrev-mode t）
 (define-abbrev-table 'global-abbrev-table '(
					    ;;signature
					    ("8ca" "caoxuemi")
					    ("8fe" "fengyuren")
					    
					    ))
(setq make-backup-files nil)

(setq auto-save-default nil)



(recentf-mode 1)

(require 'recentf)
(setq recentf-max-menu-item 10)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;激活popwin
(require 'popwin）
(popwin-mode t)


(package-initialize)

(electric-indent-mode -1)

;;使用下面的配置文件将删除功能配置成与其他图形界面的编辑器相同，即当你选中一段文字 之后输入一个字符会替换掉你选中部分的文字。
(delete-selection-mode 1)

(add-hook 'after-init-hook 'global-company-mode)





(provide 'init-better-defaults)
