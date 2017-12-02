
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode1
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t)

;;光标样式
(setq-default cursor-type 'bar)

;;默认开启全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;高亮当前行
(global-hl-line-mode 1)

(set-default-font "name (opened by): -*-Songti SC-normal-normal-normal-*-18-*-*-*-p-0-iso10646-1")

(provide 'init-ui)
