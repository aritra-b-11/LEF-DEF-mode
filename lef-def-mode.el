;;; package --- Summary:

;; Mode Name: LEF-DEF-MODE
;; Auther: Aritra Bhattacharjee
;; Email: aritrabhattacharjee12@gmail.com
;; version: 0.1
;; Release Date: TBD

;;; Commentary:

;; LEF-DEF-MODE is used for LEF and DEF view manupulaton in Emacs.

;;; Code:
(defvar lef-def-mode-hook nil "This is the mode hook for LEF-DEF-MODE for Emacs.")

(defvar lef-def-mode-keymap
  (let ((map make-sparse-keymap))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for LEF-DEF major mode.")

;;; ### autoload
(add-to-list 'auto-mode-alist '("\\.[ld]ef$" . lef-def-mode))

(provide 'lef-def-mode-hook)
;;; lef-def-mode.el ends here
