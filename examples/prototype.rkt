#lang racket/base

; SSH-Chat bot prototype
; Will be broken down and spread across multiple files later


(define CTRL-CODE "")



(define (create-connection)
  (subprocess #f #f #f (find-executable-path "ssh") "bot@chat.shazow.net"))


(define (create-io conn)
  (values
   (λ ()   ; read function
     0)
   (λ (msg)   ; write function
     0)))



(define (main)
  (define conn (create-connection))
  (define-values (read! write!) (create-io conn))

  (displayln "LOL"))




(module+ main
  (main))


; end
