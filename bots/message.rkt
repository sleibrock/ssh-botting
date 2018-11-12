#lang racket/base


(provide (struct-out msg)
         (struct-out command)
         )



(struct msg (user contents))
(struct command (args))


; end
