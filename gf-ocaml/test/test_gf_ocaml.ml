open Gf_ocaml
open Ciphers

let%test _ = A0.of_char 'c' = A0.Lower 2
let%test _ = A0.to_char (A0.Lower 2) = 'c'
let%test _ = A0.inc 1 (A0.Lower 2) = A0.Lower 3
let%test _ = "wjz ok ep xacejo" |> ceaser 4 = "and so it begins"

(* t9 *)
let%expect_test "first letter" =
  t9 "2 3 4 5 6 7 8 9" |> print_endline;
  [%expect {| a d g j m p t w |}]

let%expect_test "second letter" =
  t9 "22 33 44 55 66 77 88 99" |> print_endline;
  [%expect {| b e h k n q u x |}]

let%expect_test "Episode 4" =
  "6633998 933:3355 84433 2224425555553366433 4447777 3666882255533:3" |> t9
  |> print_endline;
  [%expect {| next week the challenge is doubled |}]
