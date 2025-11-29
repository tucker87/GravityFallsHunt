open Utils

let upper_offset = 65
let lower_offset = 97

type a0 = Upper of int | Lower of int | Symbol of int

let is_aplha = function Upper _ | Lower _ -> true | Symbol _ -> false
let upper_of_int i = Upper i
let lower_of_int i = Lower i

let add_offset = function
  | Upper u -> u + upper_offset
  | Lower l -> l + lower_offset
  | Symbol _ -> 0

let to_char letter =
  match letter with
  | Upper _ | Lower _ -> char_of_int (add_offset letter)
  | Symbol s -> char_of_int s

let of_char = function
  | c when is_upper c -> Upper (int_of_char c - upper_offset)
  | c when is_lower c -> Lower (int_of_char c - lower_offset)
  | c -> Symbol (int_of_char c)

let of_string s = String.to_seq s |> Seq.map of_char
let to_string ls = ls |> Seq.map to_char |> String.of_seq
let to_int = function Upper u | Lower u | Symbol u -> u

let inc i l =
  let inc x =
    let x = x + i in
    (x mod 26) + if x < 0 then 26 else 0
  in
  match l with
  | Upper u -> Upper (inc u)
  | Lower l -> Lower (inc l)
  | Symbol _ -> l
