---- MODULE MC ----
EXTENDS DurantEuclid, TLC

\* CONSTANT definitions @modelParameterConstants:0M
const_147572229216414000 == 
30
----

\* CONSTANT definitions @modelParameterConstants:1N
const_147572229217515000 == 
10
----

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_147572229218616000 ==
1..N
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_147572229219717000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_147572229220818000 ==
(pc = "Done") => (x = y) /\ (x = GCD(x0,y0))
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_147572229221919000 ==
Termination
----
=============================================================================
\* Modification History
\* Created Wed Oct 05 19:51:32 PDT 2016 by durant
