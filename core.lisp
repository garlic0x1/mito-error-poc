(defpackage mito-error-poc
  (:use :cl)
  (:export #:main))
(in-package :mito-error-poc)

(defvar *db-conn*
  (sqlite:connect (truename "~/.cache/mito_error_poc.sqlite3")))

(defun main ()
   (sqlite:execute-non-query
    *db-conn*
    "create table users (
       id integer primary key,
       user_name text not null,
       age integer null
     )"))
