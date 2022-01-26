;; If we list all the natural numbers bellow 10 that are multiples of 3 or 5, we
;; get 3, 5, 6, and 9. The sum of these multiples is 23.
;;
;; Find the sum of all the multiples of 3 or 5 below 1000.

(setq multiples '())
(setq counter 0)
(setq result 0)

;; Find all multiples below 1000
(while (< counter 1000)
  (if (or (= (mod counter 3) 0)
          (= (mod counter 5) 0))
      (push counter multiples))
  (setq counter (+ 1 counter)))

;; Add them all up
(while (not (null multiples))
  (setq result (+ result (car multiples)))
  (setq multiples (cdr multiples)))

(message "%d" result)
