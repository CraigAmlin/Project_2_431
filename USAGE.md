# Project_2_431

An introduction to the usage of the Lean Programming Language

Lean is at its core both a functional programming language and a mathematical theorem prover.


Lean does not have a mutable state. All values are static.


Interestingly, all functions expect only one argument, though we can clearly use multi-argument functions. This is acomplished by functions taking in one argument, then returning a function to take the next argument.

So, a function maximum with type Int -> Int -> Int -> Int when called with 
    maximum 2 6
Is run as
    maximum : Int -> (Int -> Int)
    maximum 2 : Int -> Int

Functionally, this doesn't mean anything. We can still use multi-argument functions like in any other language. It's mostly just interesting how it's implemented.