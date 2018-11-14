#lang racket/base


(require racket/string
         )

(provide any?
         all?
         words
         unwords
         )

(define (any? input-list)
  (if (empty? input-list)
      #f
      (if (= #t (car input-list))
          #t
          (any (cdr input-list)))))

(define (all? input-list)
  (if (empty? input-list)
      #t
      (if (= #f (car input-list))
          #f
          (all (cdr input-list)))))


; words recreates functionality from Haskell's word function
(define (words input-str)
  (unless (string? input-str)
    (error "input-str: input is not a string"))
  (string-split input-str " "))


; same with unwords
(define (unwords input-list)
  (unless (all? (map string? input-list))
    (error "input-list: list is not all strings"))
  (string-join input-list " "))




(define (string-begins-with? ))
  




(module+ main

  (define thing1 (words "hello there general kenobi"))
  (define thing2 (unwords '("hello" "there")))
  )

; end
