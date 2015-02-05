{- page 250
data MyList a = Blank | (::) a (MyList a)
but this doesn't work since :: is already defined
the following are fine though: -}
-- data MyList a = Blank | Cons a (MyList a)
data MyList a = Blank | (:::) a (MyList a)
-- it also says: (::) means that :: can be used as an infix operator, which isn't true (these non-alphanum symbols just need to be in parens if they are used non-infix). To make it an infix operator you need:
infixr 10 :::
