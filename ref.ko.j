Checking: (fun x -> x) = (fun x -> x)
KO: type ( X0 ==> X1 ) has no equality

Checking: let f = (fun x -> x = x) in (f (fun x -> x))
KO: type ( X0 ==> X1 ) has no equality

Checking: 1 = []
KO: term ( [] ) has type ( list X0 ) but its context expects ( int )

Checking: (1, 1) = ((fun x -> 2) 3)
KO: term ( ((fun x -> 2) 3) ) has type ( int ) but its context expects ( 
 int * int )

Checking: xxx
KO: term ( xxx ) has no type

Checking: ((fun x -> (x x)) (fun x -> (x x)))
KO: term ( c0 ) has type ( X0 ) but its context expects ( X1 ==> X2 )

