---- MODULE MC ----
EXTENDS DurantEuclid, TLC

\* CONSTANT definitions @modelParameterConstants:0M
const_147451208885467000 == 
30
----

\* CONSTANT definitions @modelParameterConstants:1N
const_147451208886468000 == 
10
----

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_147451208887469000 ==
1..30
----
\* CONSTANT definition @modelParameterDefinitions:1
def_ov_147451208888570000 ==
0..30
----
\* Constant expression definition @modelExpressionEval
const_expr_147451208889571000 == 
<<GCD1, GCD2, GCD3>>
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_147451208889571000>>)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_147451208890672000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Wed Sep 21 19:41:28 PDT 2016 by durant
