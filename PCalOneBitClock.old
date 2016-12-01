-------------------------- MODULE PCalOneBitClock --------------------------
EXTENDS Integers
(***************************************************************************
--algorithm Clock {
    variable b \in {0, 1};
    { while (TRUE) { b := (b + 1) % 2 
                   } 
    }
}
 ***************************************************************************)
\* BEGIN TRANSLATION
VARIABLE b

vars == << b >>

Init == (* Global variables *)
        /\ b \in {0, 1}

Next == b' = (b + 1) % 2

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Mon Jul 04 19:40:33 PDT 2016 by durant
\* Created Mon Jul 04 19:25:50 PDT 2016 by durant
