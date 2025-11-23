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
