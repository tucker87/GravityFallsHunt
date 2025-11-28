open Gf_ocaml
open Ciphers

let%test _ = Letter.char_to_letter 'c' = Letter.Lower 2
let%test _ = Letter.letter_to_char (Letter.Lower 2) = 'c'
let%test _ = Letter.increment_letter 1 (Lower 2) = Lower 3


let%test _ = "wjz ok ep xacejo" |> ceaser 4 = "and so it begins"
