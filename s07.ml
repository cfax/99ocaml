(* 9. Flatten a nested list structure. (medium)

There is no nested list type in OCaml, so we need to define one
     first. A node of a nested list is either an element, or a list of
     nodes.

# flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]];;
- : string list = ["a"; "b"; "c"; "d"; "e"]
*)

type 'a node =
    | One of 'a 
    | Many of 'a node list

let rec flatten (xs: 'a node list): ('a node list) =
    match xs with
    | [] -> []
    | (One x) :: xs' -> (One x) :: flatten xs'
    | (Many []) :: xs' -> flatten xs' 
    | (Many (x :: xs') :: rest) -> x :: flatten xs' @ flatten rest

