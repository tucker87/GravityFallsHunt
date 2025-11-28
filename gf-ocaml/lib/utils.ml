let upper_offset = 65
let lower_offset = 97

let string_of_char c = String.make 1 c 

let is_lower c = c >= 'a' && c <= 'z'
let is_upper c = c >= 'A' && c <= 'Z'
let is_alpha c = is_lower c || is_upper c

type letter =
  | Upper of int
  | Lower of int
  | Symbol of int

let char_of_letter = function
   | Upper u -> char_of_int @@ u + 65
   | Lower l -> char_of_int @@ l + 97
   | Symbol s -> char_of_int @@ s 

let char_to_letter = function
      | c when is_upper c -> Upper (int_of_char  c - 65)
      | c when is_lower c  -> Lower (int_of_char c - 97)
      | c -> Symbol (int_of_char c)

let letter_to_int = function
   | Upper u | Lower u | Symbol u -> u

let from_a0 offset n = char_of_int (offset + n)

let get_char_offset = function
   | c when is_lower c -> 97
   | c when is_upper c -> 65
   | _ -> 0

let get_letter_offset = function
   | Upper _ -> 65
   | Lower _ -> 97
   | Symbol _ -> 0

let to_a0_safe c = 
   let offset = get_char_offset c in
   (int_of_char c - offset, offset)

let increment_letter i c =
  let a = char_to_letter c in
   match a with
   | Upper v | Lower v ->
      let v = v + i in
      from_a0 (get_char_offset c) (v mod 26 + if v < 0 then 26 else 0)
   | Symbol s -> char_of_int s


let explode s =
   List.init (String.length s) (String.get s)

let rec implode chars =
  match chars with
    [] -> ""
    | h::t ->  string_of_char h ^ (implode t)


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
