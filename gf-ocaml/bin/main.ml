module Utils = Gf_ocaml.Utils

let atbash_char c =
  let a0 = Gf_ocaml.Utils.to_a0 c in
   match a0 with
      | Letter (a, offset) -> Utils.from_a0 offset (25 - a)
      | Symbol c -> c

let atbash s = String.map atbash_char s


let input = "rg nzb yv wruurxfog gl xlmgrmfv zolmv"
let () = input |> atbash |> print_endline 

