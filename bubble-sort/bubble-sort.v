Require Import List.

Definition a := 3::2::1::nil.
Variable A : Type.
Hypothesis eq_dec : forall x y : A, {x = y}+{x <> y}.

Fixpoint remove_one (x : A) (l : list A) : list A :=
  match l with
    | nil => nil
    | y::tl => if (eq_dec x y) 
      then tl
      else y::(remove_one x tl)
  end.

Eval compute in remove_one 3 a.

Check a.
Print a.
Eval compute in length a.
Eval compute in last a.
Eval compute in head a.
Eval compute in tail a.
Eval compute in (remove 3 a).