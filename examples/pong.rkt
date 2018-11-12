#lang racket/base

(require "../bots/actions.rkt"
         "../bots/message.rkt"
         "../bots/utils.rkt")





(define (main)
  (define pong-bot (make-bot '()))
  (run-bot pong-bot))

(module+ main
  (displayln "Incomplete!"))
