#lang racket/base


(require racket/string
         )

(provide any
         all
         words
         unwords
         )

(define (any input-list) 0)
(define (all input-list) 0)


; words recreates functionality from Haskell's word function
(define (words input-str)
  (unless (string? input-str)
    (error "input-str: input is not a string"))
  (string-split input-str " "))


; same with unwords
(define (unwords input-list)
  (string-join input-list " "))
  




(module+ main

  (define thing1 (words "hello there general kenobi"))
  (define thing2 (unwords '("hello" "there")))
  )

; end
