open Gf_ocaml
open Ciphers

let%test _ = Letter.of_char 'c' = Letter.Lower 2
let%test _ = Letter.to_char (Letter.Lower 2) = 'c'
let%test _ = Letter.inc 1 (Letter.Lower 2) = Letter.Lower 3
let%test _ = "wjz ok ep xacejo" |> ceaser 4 = "and so it begins"
