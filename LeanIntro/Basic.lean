--Welcome to Lean. Double hyphens are comments
--def is used for declaring and defining variables.
--Implied tyyping means you don't need to specify that a string is a string
def hello := "world"

--#eval will evaluate an expression and print the result to your IDE
#eval String.append "Hello, " hello

--numbers without decimals automatically are assumed to be natural numbers and are assigned the Nat type
#eval 1 + 2 - 3 * (4 / 5)

--LIke any functional language, functions are types that can be decalred, called, and passed to other functions
def sub1 (n : Int) : Int := n - 1

--Structures can be defined as a collection of types
--They can also be defined inductively, or use polymorphism to include varying types
structure Point (a : Type) where
  x : a
  y : a
deriving Repr

def origin : Point (Float) := { x := 0.0, y := 0.0 }

def distance (p1 : Point (Float)) (p2 : Point (Float)) : Float :=
  Float.sqrt (((p2.x - p1.x) ^ 2.0) + ((p2.y - p1.y) ^ 2.0))

#eval distance origin {x := 3.0, y := 4.0 : Point (Float)}

--Lean does not have a mutable state. All values are static. To change the value of a variable, a new variable is created instead. If changing a variable in a structure, one can copy the elements that aren't used while changing the values to replace.
--If doing this on a larger structure, it may be cumbersome to manually copy values from every field to the new structure, so one can use the with keyword to automatically copy any fields not otherwise specified. This is faster and esier than copying each value from a complex structure with several dozen variables.
def plusOneX (p : Point (Float)) :=
    {p with x := p.x + 1.0}

--On the mathematical proving side of Lean, this starts with Propositions, statments that can be proven true or false
def OnePlusOneisTwo : Prop := 1 + 1 = 2
--We can declare propositions using the theorem keyword to clarify what is being proven
--rfl is used to prove a theorem reflexivly, by proving one side of an equation is equal to the other without generating proof
theorem onePlusOne : OnePlusOneisTwo := rfl
--Alternatively, by simp will have the program generate proof for a provided proposition.
--It's fairly limited in what it can acomplish, and will usually only work for simple tasks.
theorem onePlusTwo : 1 + 2 = 3 := by simp
