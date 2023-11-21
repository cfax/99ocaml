(* 4. Find the number of elements of a list. (easy)

OCaml standard library has List.length but we ask that you reimplement it.
Bonus for a tail recursive solution.

# length ["a"; "b"; "c"];;
- : int = 3
# length [];;
- : int = 0
*)

let rec length (xs: 'a list): int = 
    match xs with
    | [] -> 0
    | x :: xs -> 1 + length xs
