----------------------------- MODULE DurantGCD -----------------------------
EXTENDS Integers

\* Divides(p, n) == \E q \in 1..n : n = q * p
Divides(p, n) == \E q \in Int : n = q * p

DivisorsOf(n) == {p \in Int : Divides(p,n)}

SetMax(S) == CHOOSE i \in S : \A j \in S : i >= j

GCD(m, n) == SetMax(DivisorsOf(m) \cap DivisorsOf(n))

GCD1 == \A m \in Nat \ {0} : GCD(m, m) = m
GCD2 == \A m,n \in Nat \ {0} : GCD(m, n) = GCD(n, m)
GCD3 == \A m,n \in Nat \ {0} : (n > m) => (GCD(m, n) = GCD(m, n - m))

\* why do these fail?
\* GCD2 == {m,n} \subseteq Nat \ {0} : GCD(m, n) = GCD(n, m)
\* GCD3 == {m,n} \subseteq Nat \ {0} : (n > m) => (GCD(m, n) = GCD(m, n - m))


=============================================================================
\* Modification History
\* Last modified Wed Sep 21 18:01:15 PDT 2016 by durant
\* Created Tue Jul 19 20:22:35 PDT 2016 by durant
