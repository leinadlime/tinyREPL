(define count-in
  (lambda (val lst)
    (if (== lst '())
      0
      (+ (if (== val (head lst)) 1 0)
         (count-in val (tail lst))))))

; Again, it's similar to the length function..

; The recursive part is similar - this:
;    (count-in val (tail lst))
; tells us how many times val occurs in the tail
; of lst.
;
; We add 1 if the head of lst equals val, otherwise
; we add 0.

; And again we have to make sure the recurssion
; ends eventually by testing for the empty list, and
; returning 0. The empty list certainly doesn't contain
; val - whatever the value of val...
