-------------------------- MODULE DurantSetEuclid --------------------------
EXTENDS DurantGCD, Integers 

SetGCD(T) == SetMax({d \in Int : \A t \in T : Divides(d, t)})

CONSTANTS Input \* trying this to set Input, p. 50, 51

\* I don't get the error even w/o this. What's up?
\* RECURSIVE SetSum(_)
SetSum(T) == IF T = {} THEN 0
                       ELSE LET t == CHOOSE x \in T : TRUE
                            IN  t + SetSum(T \ {t})

(****************************************************
--fair algorithm SetEuclid {
    variables S = Input; 
    { while ( Cardinality(S) > 1 )
        { with ( x \in S, y \in {s \in S : s > x} )
            { S := (S\{y}) \union {y-x} } 
        }
     } 
}
*****************************************************)       
\* BEGIN TRANSLATION
VARIABLES S, pc

vars == << S, pc >>

Init == (* Global variables *)
        /\ S = Input
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF Cardinality(S) > 1
               THEN /\ \E x \in S:
                         \E y \in {s \in S : s > x}:
                           S' = ((S\{y}) \union {y-x})
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ S' = S

Next == Lbl_1
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION
PartialCorrectness == 
    (pc = "Done") => (S = setGCD(Input))  

=============================================================================
\* Modification History
\* Last modified Wed Oct 19 20:00:48 PDT 2016 by durant
\* Created Wed Oct 05 18:30:20 PDT 2016 by durant
