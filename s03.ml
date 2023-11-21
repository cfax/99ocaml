(* Find the K'th element of a list. (easy)

# at 3 ["a"; "b"; "c"; "d"; "e"];;
- : string option = Some "c"
# at 3 ["a"];;
- : string option = None

*)

let rec at (k: int) (xs: 'a list): 'a option =
    match xs with
    | x :: xs when k == 1 -> Some x
    | []                  -> None
    | _ :: xs             -> at (k - 1) xs
