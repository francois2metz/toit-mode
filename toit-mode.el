(defconst toit--font-lock-defaults
  `((("\\(import|task|class|static|throw|catch|return|if\\)" 1 font-lock-keyword-face)
     ("//.*" 0 font-lock-comment-face t)
     ("\\([a-zA-Z_][a-zA-Z0-9_-]*\\)\\([. a-zA-Z0-9/>?_-]*\\):$" 1 font-lock-function-name-face)
     ("/\\([.a-zA-Z0-9?]+\\):?" 1 font-lock-type-face)
     ("-> \\([.a-zA-Z0-9?]+\\):?" 1 font-lock-type-face)
     ("\\([a-zA-Z][a-zA-Z0-9_-]*\\) \\(:=\\)?\\(=\\)?\\(::=\\)?" 1 font-lock-variable-name-face)
     )))

(define-derived-mode toit-mode prog-mode "toit"
  "Major mode for toit files."
  (setq-local font-lock-defaults toit--font-lock-defaults)
  )

(add-to-list 'auto-mode-alist '("\\.toit\\'" . toit-mode))

(provide 'toit-mode)
