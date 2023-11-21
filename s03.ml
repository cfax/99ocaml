(* Find the K'th element of a list. (easy)

# at 3 ["a"; "b"; "c"; "d"; "e"];;
- : string option = Some "c"
# at 3 ["a"];;
- : string option = None

*)

let rec at (k: int) (xs: 'a list): 'a option =
    if k > List.length xs || k <= 0
        then None
    else match k, xs with
        | _, [] -> None
        | 0, x :: _ -> Some x
        | k, _ :: xs -> at (k - 1) xs

