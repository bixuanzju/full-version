---- Begin Comment ----

Higher-order abstract syntax, also define `show` function for printing `Value`

<expr>            pretty print
:t <expr>         show the type
:trans <expr>     show the translation
:e <expr>         evaluation
:q                quit gracefully

Copy and paste the following definition to REPL

---- End Comment ----

data Exp = Num (n : int) |  Lam (f : Exp -> Exp) |  App (a : Exp) (b : Exp); data Value = VI (n : int) | VF (f : Value -> Value); rcrd Eval = Ev { eval' : Exp -> Value, reify' : Value -> Exp }; letrec ev : Eval = Ev  (\ e : Exp . case e of Num (n : int) => VI n | Lam (fun : Exp -> Exp) => VF (\e' : Value . eval' ev (fun (reify' ev e'))) | App (a : Exp) (b : Exp) => case eval' ev a of VI (n : int) => error | VF (fun : Value -> Value) => fun (eval' ev b)) (\v : Value . case v of VI (n : int) => Num n | VF (fun : Value -> Value) => Lam (\e' : Exp . (reify' ev (fun (eval' ev e'))))) in let eval : Exp -> Value = eval' ev in let show : Value -> int = \v : Value . case v of VI (n : int) => n | VF (fun : Value -> Value) => error in let test : Exp = App (Lam (\ f : Exp . App f (Num 42))) (Lam (\g : Exp. g)) in show (eval test)
