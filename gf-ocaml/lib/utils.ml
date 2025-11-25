let is_lower c = c >= 'a' && c <= 'z'
let is_upper c = c >= 'A' && c <= 'Z'

type letter =
  | Letter of int * int
  | Symbol of char

let getOffset = function
   | c when is_lower c -> 97
   | c when is_upper c -> 65
   | _ -> -1

let from_a0 offset n =
  char_of_int (offset + n)

let to_a0 c =
   let offset = getOffset c in
   match offset with
      | o when o >= 0 -> Letter (int_of_char c - offset, offset)
      | _ -> Symbol c

let to_a0_simple c =
   int_of_char c - getOffset c 

let increment_letter i c =
  let a = to_a0 c in
   match a with
         | Symbol c -> c
         | Letter (v, o) ->
               let v = v + i in
               from_a0 o (v mod 26 + if v < 0 then 26 else 0)

let join a = Array.fold_left (fun acc x -> acc ^ x) "" a

let string_of_char c = String.make 1 c 

let is_alpha c = Str.string_partial_match (Str.regexp "[a-zA-Z]") (string_of_char c) 0

let skip_non_alpha f c = 
   if (is_alpha c)
      then f c 
      else c
