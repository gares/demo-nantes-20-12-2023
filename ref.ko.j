Checking: eq (lam c0 \ c0) (lam c0 \ c0)
KO: type ( X0 ==> X0 ) has no equality

Checking: let (lam c0 \ eq c0 c0) X0 c0 \ app c0 (lam c1 \ c1)
KO: type ( X1 c0 ==> X1 c0 ) has no equality

Checking: eq (literal 1) (global [])
KO: term ( global [] ) has type ( list X0 ) but its context expects ( int )

Checking: 
 eq (app (app (global ,) (literal 1)) (literal 1)) 
  (app (lam c0 \ literal 2) (literal 3))
KO: term ( app (lam c0 \ literal 2) (literal 3) ) has type ( int 
 ) but its context expects ( pair int int )

Checking: global xxx
KO: term ( global xxx ) has no type

Checking: app (lam c0 \ app c0 c0) (lam c0 \ app c0 c0)
KO: term ( c0 ) has type ( X0 ) but its context expects ( X0 ==> X1 )

