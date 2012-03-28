Require Import List.

Definition a := 3::2::1::nil.

Check a.
Print a.
Eval compute in length a.
Eval compute in last a.
Eval compute in head a.
Eval compute in tail a.