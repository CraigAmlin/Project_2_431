def hello := "world"

#eval String.append "Hello, " hello

#eval 1 + 2 - 3 * (4 / 5)

def sub1 (n : Int) : Int := n - 1

structure Point where
  x : Float
  y : Float
deriving Repr

def origin : Point := { x := 0.0, y := 0.0 }

def distance (p1 : Point) (p2 : Point) : Float :=
  Float.sqrt (((p2.x - p1.x) ^ 2.0) + ((p2.y - p1.y) ^ 2.0))

#eval distance origin {x := 3.0, y := 4.0 : Point}
