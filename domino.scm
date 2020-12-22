(define dominoes
    (lambda (n)
        (deskGenerator n n)
    )
)

(define deskGenerator
    (lambda (n t)
        (if (< t 1)
            (if (< n 1)
                (list (cons 0 0))
                (append(list (cons n 0)) (deskGenerator (- n 1) (- n 1)))
            )
            (append (list (cons n t)) (deskGenerator n (- t 1)))
        )
    )
)