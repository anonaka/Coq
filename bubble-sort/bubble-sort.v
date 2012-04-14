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
    | x::xs  => match (leb x (min_nat xs)) with
                  | true => x
                  | false => min_nat xs
                end
  end.


Fixpoint bubble_sort_nat (l : list nat) : list nat :=
  match l with
    | nil => nil
    | _  => (min_nat l)::(bubble_sort_nat
      (remove_one_nat (min_nat l) l))
  end.

    