(defpackage mito-error-poc
  (:use :cl :binding-arrows :mito)
  (:export #:main))
(in-package :mito-error-poc)

;; tried postgres, it also does not work
(connect-toplevel
 :sqlite3
 ;; :host "localhost"
 ;; :username "postgres"
 ;; :password "postgres"
 ;; :database-name "debug_test"
 :database-name
 (truename "~/.cache/mito_error_poc.sqlite3")
 )

(deftable repository ()
  ((link :col-type (:varchar 256) :primary-key t)
   (host :col-type (:varchar 32))
   (user :col-type (:varchar 128))
   (repo :col-type (:varchar 128))))

(defun my-factorial (x)
  (if (= x 0)
      1
      (* x (my-factorial (- x 1)))))

(defun main ()
  ;; this works
  (some->
    (uiop:command-line-arguments)
    (first)
    (parse-integer)
    (my-factorial)
    (print))

  ;; causes memory fault in binary but not in repl
  (mito:recreate-table 'repository)
  )
