---- MODULE MC ----
EXTENDS DurantGCD, TLC

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_14702739510002000 ==
-1000..1000
----
\* Constant expression definition @modelExpressionEval
const_expr_14702739510103000 == 
GCD(1, 1)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_14702739510103000>>)
----

=============================================================================
\* Modification History
\* Created Wed Aug 03 18:25:51 PDT 2016 by durant
