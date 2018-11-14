#lang racket/base



(provide ssh-exec
         ssh-port
         )


(define ssh-exec (make-parameter (find-executable-path "ssh")))
(define ssh-port (make-parameter 0))

; end
