(asdf:defsystem "mito-error-poc"
  :depends-on (
               ;; :alexandria
               ;; :binding-arrows
               :sqlite
               ;; :dbi
               ;; :mito
               )
  :components ((:file "core")))
