(* Eliminate consecutive duplicates of list elements. (medium)

# compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
- : string list = ["a"; "b"; "c"; "a"; "d"; "e"]
*)

let rec compress (xs: 'a list): ('a list) =
    match xs with
    | x :: (y :: _ as rest) ->
            if x = y
            then compress rest
            else x :: (compress rest)
    | _ -> xs

