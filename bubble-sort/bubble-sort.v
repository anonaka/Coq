Require Import List.
Require Import Arith.

Fixpoint remove_one_nat (x : nat) (l : list nat) : list nat :=
  match l with
    | nil => nil
    | y::tl => if (eq_nat_dec x y) then tl else y::(remove_one_nat x tl)
  end.

Fixpoint min_nat (l : list nat) : nat :=
  match l with
    | nil => 0
    | x::nil => x
    | x::xs => 
      if (x <= (min_nat xs)) 
        then x
        else min_nat xs
  end.


Fixpoint bubble_sort_nat (l : list nat) : list nat :=
  match l with
    | nil => nil
    | _  => undfied
  end.

    