# Project_2_431

An introduction to the Usage, Motivation, and Characteristics of the Lean Programming Language

### Family
 - **Proof Assistant**

### Paradigms
 - **Functional Programming**
 - **Imperative Programming**

### Typing Discipline
 - **Static**
 - **Strong**
 - **Inferred**

Lean is a an open-source, primarily functional programming language that is heavily influenced by *calculus of constructions*, a higher-order typed lambda calculus. It is at its core both a functional programming language and a mathematical theorem prover.

Lean has been used by prominent companies such as Amazon, Google, and Meta for reasoning and program/mathematical correctness at scale. In recent years, Lean has also found use in Artificial Intelligence development and modern mathematical research.

In the world of mathematics, it's garnered use from kevin Buzzard for his Xena Project, which aims to rewrite every theorem and proof in the Imperial College London's math curriculum in Lean. It has also been used by Heather Macbeth as the basis of the book "The Mechanics of Proof", which covers an introduction writing to mathematical proofs at an early university level.

Lean has also proved interesting to the field of Artificial Intelligence, with OpenAI, MetaAI, and Google DeepMind all creating AI models capable of generating mathematic proofs in Lean for math olympiad problems, at best matching the level of a silver medal worthy performance.


## Language Shortcomings

As one of three major proof assistants, including Coq (1989) and Isabelle (1986), Lean has a lot going for it. However, with Lean (2013) being the newest of the three there are some notable pain points.

Each major version of the Lean programming language is less than a decade of age apart from the next. Usually innovation isn't a problem, but lack of backwards compatibility between major versions certainly is. Lean 3 (2017) was only 4 years older than Lean 1 at release and was declared end-of-life by its original developers as soon development of Lean 4 (2021) began.

If you are a mathematical researcher, it may be advisable to use an older proof assistant with more documentation, prior work examples and a more established academic community. Assuming you are working with Lean 4 now, the inception of Lean 5 may happen before your research comes to fruition.


## Trivia

This next piece is more trivia than anything, and while I found it interesting enough to include it is not interesting enough to create an entirely new TRIVIA.md file just for it. So it can go here.
Interestingly, all Lean functions expect only one argument, though we are still able to use multi-argument functions. This is acomplished by functions taking in one argument, then returning a function to take the next argument.
So, a function maximum with type Int -> Int -> Int -> Int when called with 
    maximum 2 6 5
Is run as
    maximum : Int -> (Int -> Int -> Int)
        the function maximum that takes one Int and returns a function that takes two Ints
    maximum 2 : (Int -> Int -> Int)
        The function maximum 2 that takes one Int and returns a function that takes one Int
    maximum 2 6 (Int -> Int)
        The function maximum 2 6 that takes one Int and returns an Int
Functionally, this doesn't mean anything. We can still use multi-argument functions like in any other language. It's mostly just interesting and unique in how it's implemented.