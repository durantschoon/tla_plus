---- MODULE MC ----
EXTENDS DurantEuclid, TLC

\* CONSTANT definitions @modelParameterConstants:0M
const_147632351344698000 == 
30
----

\* CONSTANT definitions @modelParameterConstants:1N
const_147632351345699000 == 
10
----

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_1476323513466100000 ==
1..N
----
\* Constant expression definition @modelExpressionEval
const_expr_1476323513477101000 == 
GCD(4,6)

----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_1476323513477101000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_1476323513488102000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1476323513499103000 ==
PartialCorrectness
----
=============================================================================
\* Modification History
\* Created Wed Oct 12 18:51:53 PDT 2016 by durant
