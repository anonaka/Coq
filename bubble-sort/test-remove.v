Require Import List.
Require Import Arith.
Open Scope list_scope.
Eval compute in remove eq_nat_dec 3 (3::2::1::nil).
