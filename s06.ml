(* Find out whether a list is a palindrome. (easy)

HINT: a palindrome is its own reverse.

# is_palindrome ["x"; "a"; "m"; "a"; "x"];;
- : bool = true
# not (is_palindrome ["a"; "b"]);;
- : bool = true
*)

#use "s05.ml"

let is_palindrome (xs: 'a list): bool =
    if xs = rev' xs
    then true
    else false
