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
  (let ((map (make-sparse-keymap)))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for LEF-DEF major mode.")

;;; ### autoload
(add-to-list 'auto-mode-alist '("\\.[ld]ef$" . lef-def-mode))

(defconst lef-def-font-lock-keyword-face-1
  (list
   '("\\<\\(#.*$\\)\\>" . font-lock-comment-face))
  "Highliting for LEF-DEF-MODE.")


(defvar lef-def-mode-font-lock-keywords lef-def-font-lock-keyword-face-1
  "Keywords for LEF DEF font lock.")

;; make the LEF DEF MODE from here
;; add the keymap & syntax hilight after doc string
(define-derived-mode lef-def-mode fundamental-mode "LEF DEF Mode"
  "This is a Fundamental mode for editing LEF DEF files."
  (set (make-local-variable 'font-lock-defaults) '(lef-def-font-lock-keywords))
  )

(provide 'lef-def-mode)

;;; lef-def-mode.el ends here
