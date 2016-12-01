------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES big, small

Init == /\ big = 0
        /\ small = 0
        
TypeOK == /\ big   \in 0..5
          /\ small \in 0..3
        
FillSmall  == /\ small' = 3
              /\ big'   = big

FillBig    == /\ big'   = 5
              /\ small' = small

EmptySmall == /\ small' = 0
              /\ big'   = big

EmptyBig   == /\ big'   = 0
              /\ small' = small

Min(m, n) == IF m < n THEN m ELSE n

SmallToBig == 
    \* LET poured == Min(big + small, 5) - big
    LET poured == Min(small, 5 - big)
    IN  /\ big' = big + poured
        /\ small' = small - poured

BigToSmall == 
    \* LET poured == Min(big + small, 3) - small
    LET poured == Min(big, 3 - small)
    IN  /\ big' = big - poured
        /\ small' = small + poured
                                       
Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall        

=============================================================================
\* Modification History
\* Last modified Wed Aug 24 18:16:48 PDT 2016 by durant
\* Created Mon Jul 04 19:55:51 PDT 2016 by durant
