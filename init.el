
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;加载packages文件
(require 'init-packages)
(require 'init-ui)
(require 'init-keybindings)
(require 'init-better-defaults)
(require 'init-org) 
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

;;(load-file custom-file)


