let string_of_char c = String.make 1 c
let is_digit c = c >= '0' && c <= '9'
let is_lower c = c >= 'a' && c <= 'z'
let is_upper c = c >= 'A' && c <= 'Z'
let explode s = List.init (String.length s) (String.get s)

let reverse_string s =
  String.to_seq s |> List.of_seq |> List.rev |> List.to_seq |> String.of_seq

let reverse_words s =
  String.split_on_char ' ' s |> List.map reverse_string |> String.concat " "

let replace_all e r s = Pcre2.replace ~pat:e ~templ:r s
