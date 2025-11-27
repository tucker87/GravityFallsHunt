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

let to_a0_safe c = 
   let offset = getOffset c in
   (int_of_char c - offset, offset)

let increment_letter i c =
  let a = to_a0 c in
   match a with
         | Symbol c -> c
         | Letter (v, o) ->
               let v = v + i in
               from_a0 o (v mod 26 + if v < 0 then 26 else 0)

let string_of_char c = String.make 1 c 

let explode str =
  let rec explode_inner cur_index chars = 
    if cur_index < String.length str then
      let new_char = str.[cur_index] in
      explode_inner (cur_index + 1) (chars @ [new_char])
    else chars in
  explode_inner 0 []

let rec implode chars =
  match chars with
    [] -> ""
    | h::t ->  string_of_char h ^ (implode t)

let is_alpha c = Pcre2.pmatch ~pat:"[a-zA-Z]" (string_of_char c)

let skip_non_alpha f c = 
   if (is_alpha c)
      then f c 
      else c

let reverse_string s =
   String.to_seq s |> List.of_seq |> List.rev |> List.to_seq |> String.of_seq

let reverse_words s = 
   String.split_on_char ' ' s 
   |> List.map reverse_string
   |> String.concat " "


let replace_all e r s =
   Pcre2.replace ~pat:e ~templ:r s
