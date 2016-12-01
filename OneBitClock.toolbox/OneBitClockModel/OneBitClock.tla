---------------------------- MODULE OneBitClock ----------------------------
EXTENDS Integers
VARIABLE b
TypeOK == b \in {0, 1}
Init1 == (b = 0) \/ (b = 1)
Next1 == \/ /\ b  = 0
            /\ b' = 1
         \/ /\ b  = 1
            /\ b' = 0
Next2 == b' = IF b = 0 THEN 1 ELSE 0
Next3 == b' = (b + 1) % 2

=============================================================================
\* Modification History
\* Last modified Mon Jul 04 19:14:44 PDT 2016 by durant
\* Created Mon Jul 04 18:04:37 PDT 2016 by durant