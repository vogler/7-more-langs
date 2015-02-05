module Functions

{- page 248
this works in the REPL:
map (*0.5) [1,2,3]
[0.5,1.0,1.5] : List Float

but this doesn't:
map (*0.5) [1.0,2.0,3.0]
Can't disambiguate name: Prelude.List.::, Prelude.Vect.::
The book now says, that the REPL doesn't have enough information to infer whether it should use the map for List, Stream, Vect, etc. and the solution is:
map (*0.5) (the (List Float) [3.13,2.78])
but why does it work for List Integer without restricting the type?
-}
