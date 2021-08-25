(setq wgsl-font-lock-keywords
      '(
	;; functions names
	;;("fn[[:space:]]\\([[:alpha:]]+\\)" . font-lock-function-name-face)
	("fn\\|return" . font-lock-keyword-face)
	;; function parameters and types
	;("\\([[:alpha:]]+\\)\:" . font-lock-variable-name-face)
	;;("\:[[:space:]]\\([[:alpha:]]+\\)" . font-lock-type-face)
	;; structs
	("struct" . font-lock-keyword-face)
	;; types
	("f32\\|vec[[:digit:]]" . font-lock-type-face)
	;; built-ins
	("location\\|builtin\\|group\\|binding\\|block" . font-lock-builtin-face)
	))

(define-derived-mode wgsl-mode c-mode "wgsl"
  "major mode for editing wgsl shader files."
  (setq font-lock-defaults '(wgsl-font-lock-keywords)))
