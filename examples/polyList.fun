---- Begin Comment ----

A polymorphic list and the `length` function

<expr>            pretty print
:t <expr>         show the type
:trans <expr>     show the translation
:e <expr>         evaluation
:q                quit gracefully

Copy and paste the following definition to REPL

---- End Comment ----


data List (a : *) = Nil | Cons (x : a) (xs : List a); letrec length : (a : *) -> List a -> int = \ a : * . \ l : List a . case l of Nil => 0 | Cons (x : a) (xs : List a) => 1 + length a xs in let test : List int = Cons int 1 (Cons int 2 (Nil int)) in length int test
