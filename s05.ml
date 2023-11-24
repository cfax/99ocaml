(* 5. Reverse a list. (easy)

OCaml standard library has List.rev but we ask that you reimplement it.

# rev ["a"; "b"; "c"];;
- : string list = ["c"; "b"; "a"]
*)

let rec rev (xs: 'a list): ('a list) =
    match xs with
    | [] -> []
    | x :: xs -> (rev xs) @ [x]
    
let rec rev' (xs: 'a list): ('a list) =
    let rec rev_tco (xs: 'a list) (acc: 'a list): ('a list) =
        match xs with
        | [] -> acc
        | x :: xs -> rev_tco xs (x :: acc)
    in rev_tco xs []
