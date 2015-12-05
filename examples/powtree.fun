---- Begin Comment ----

A power tree, also define some help functions on lists, such as `foldr`,
`append`, `concatMap`, `head`, `tail`. The `toList` function transform
a power tree to a list

<expr>            pretty print
:t <expr>         show the type
:trans <expr>     show the translation
:e <expr>         evaluation
:q                quit gracefully

Copy and paste the following definition to REPL

---- End Comment ----

data List (a : *) = Nil | Cons (x:a) (xs : List a); data PairT (a : *) = P (x : a) (x : a); data Pow (a : *) = Zero (n : a) | Succ (t : Pow (PairT a)); letrec foldr : (a : *) -> (b : *) -> (a -> b -> b) -> b -> List a -> b = \a : * . \b : * . \f : a -> b -> b . \y : b . \l : List a . case l of Nil => y | Cons (x : a) (xs : List a) => f x (foldr a b f y xs) in letrec append : (a : *) -> List a -> List a -> List a = \a : * . \l : List a . \m : List a . case l of Nil => m | Cons (x : a) (xs : List a) => Cons a x (append a xs m) in let concatMap : (a : *) -> (b : *) -> (a -> List b) -> List a -> List b = \a : * . \b : * . \f : a -> List b . foldr a (List b) (\x : a . \y : List b . append b (f x) y) (Nil b) in letrec toList : (a : *) -> Pow a -> List a = \a : * . \t : Pow a . case t of Zero (x : a) => Cons a x (Nil a) | Succ (c : Pow (PairT a)) => concatMap (PairT a) a (\ x : PairT a . case x of P (m : a) (n : a) => Cons a m (Cons a n (Nil a))) (toList (PairT a) c) in let head : List int -> int = \ x : List int . case x of Nil => error | Cons (x : int) (xs : List int) => x in let tail : List int -> List int = \ x : List int . case x of Nil => Nil int | Cons (y : int) (ys : List int) => ys in let test : Pow int = Succ int (Zero (PairT int) (P int 42 43)) in head (toList int test)
