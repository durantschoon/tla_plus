---------------------------- MODULE DurantEuclid ----------------------------

EXTENDS Integers, DurantGCD, TLC
CONSTANTS M, N

\* ASSUME /\ M \in Nat \ {0}
\*        /\ N \in Nat \ {0}

ASSUME {M, N} \subseteq Nat \ {0}

\* Question 4.3 (page 34)
\* How many other ways can you write the set of positive integers in TLA+?
\* Answers:
\* ASSUME N \in {x \in Nat : x > 0}
\* ASSUME N \in {x \in Int : x > 0}
\* ASSUME N \in {x+1 : x \in Nat}
       
(****************************************************
\* revert to orginal for 4.9.1
--fair algorithm Euclid {
    \* variables x = M, y = N ;
    variables x \in 1..N, y \in 1..N;
    { abc: while (x # y) { d: if (x < y) { y := y - x }
                      else       { x := x - y }
                    };
    }
}

\* upto 4.8 stuff
\*--fair algorithm Euclid {
\*    \* variables x = M, y = N ;
\*    variables x \in 1..N, y \in 1..N, x0 = x, y0 = y ;
\*    { abc: while (x # y) { d: if (x < y) { e: y := y - x }
\*                      else       { f: x := x - y }
\*                    }; assert (x = y) /\ (x = GCD(x0, y0))
\*    }
\*}
*****************************************************)       
\* BEGIN TRANSLATION
VARIABLES x, y, pc

vars == << x, y, pc >>

Init == (* Global variables *)
        /\ x \in 1..N
        /\ y \in 1..N
        /\ pc = "abc"

abc == /\ pc = "abc"
       /\ IF x # y
             THEN /\ pc' = "d"
             ELSE /\ pc' = "Done"
       /\ UNCHANGED << x, y >>

d == /\ pc = "d"
     /\ IF x < y
           THEN /\ y' = y - x
                /\ x' = x
           ELSE /\ x' = x - y
                /\ y' = y
     /\ pc' = "abc"

Next == abc \/ d
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION

PartialCorrectness == 
    (pc = "Done") => (x = y) /\ (x = GCD(M, N))  
    
=============================================================================
\* Modification History
\* Last modified Wed Sep 21 18:00:17 PDT 2016 by durant
\* Created Tue Jul 26 22:46:52 PDT 2016 by durant
