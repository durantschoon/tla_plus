----------------------------- MODULE DurantGCD -----------------------------
EXTENDS Integers

\* Divides(p, n) == \E q \in 1..n : n = q * p
Divides(p, n) == \E q \in Int : n = q * p

DivisorsOf(n) == {p \in Int : Divides(p,n)}

SetMax(S) == CHOOSE i \in S : \A j \in S : i >= j

GCD(m, n) == SetMax(DivisorsOf(m) \cap DivisorsOf(n))

=============================================================================
\* Modification History
\* Last modified Tue Jul 19 20:58:54 PDT 2016 by durant
\* Created Tue Jul 19 20:22:35 PDT 2016 by durant
