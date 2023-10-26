(asdf:defsystem "mito-error-poc"
  :depends-on (:alexandria
               :binding-arrows
               :mito)
  :components ((:file "core")))
