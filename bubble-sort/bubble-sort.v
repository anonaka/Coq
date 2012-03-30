Require Import List.
Open Scope list_scope.
Definition a := 3::2::1::nil.
(* Variable A : Type. *)
(* Hypothesis eq_dec : forall x y : A, {x = y}+{x <> y}. *)
Check a.
Print a.

Fixpoint remove_one {A : Set} (x : A) (l : list A) : list A :=
  match l with
    | nil => nil
    | y::tl => match y with
                 | x => tl
                 | _ => y::(remove_one x tl)
               end
  end.

Eval compute in (remove_one 3 a).

Check a.
Print a.
Eval compute in length a.
Eval compute in last a.
Eval compute in head a.
Eval compute in tail a.
Eval compute in (remove 3 a).