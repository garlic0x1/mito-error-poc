;; (asdf:load-asd "mito-error-poc.asd")
(ql:quickload :mito-error-poc)
(sb-ext:save-lisp-and-die
 #p"mito-error-poc"
 :toplevel #'mito-error-poc:main
 :executable t)
