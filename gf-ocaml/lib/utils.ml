let string_of_char c = String.make 1 c 

let is_lower c = c >= 'a' && c <= 'z'
let is_upper c = c >= 'A' && c <= 'Z'
let is_alpha c = is_lower c || is_upper c

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
