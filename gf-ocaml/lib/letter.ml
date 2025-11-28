open Utils

let upper_offset = 65
let lower_offset = 97

type letter =
  | Upper of int
  | Lower of int
  | Symbol of int

let not_symbol = function
   | Upper _ | Lower _ -> true
   | Symbol _ -> false

let int_to_upper i = Upper i
let int_to_lower i = Lower i

let add_offset = function
   | Upper u -> u + 65
   | Lower l -> l + 97
   | Symbol _ -> 0

let letter_to_char letter =
   match letter with
   | Upper _ | Lower _ -> char_of_int (add_offset letter)
   | Symbol s -> char_of_int s 

let char_to_letter = function
      | c when is_upper c -> Upper (int_of_char  c - upper_offset)
      | c when is_lower c  -> Lower (int_of_char c - 97)
      | c -> Symbol (int_of_char c)

let string_to_letters s =
   String.to_seq s |> Seq.map char_to_letter

let letters_to_string ls =
   ls |> Seq.map letter_to_char |> String.of_seq

let letter_to_int = function
   | Upper u | Lower u | Symbol u -> u

let get_char_offset = function
   | c when is_lower c -> 97
   | c when is_upper c -> 65
   | _ -> 0

let increment_letter i l =
   let inc x = 
      let x = x + i in
      (x mod 26 + if x < 0 then 26 else 0) in
   match l with
   | Upper u -> Upper (inc u)
   | Lower l -> Lower (inc l)
   | Symbol _ -> l
