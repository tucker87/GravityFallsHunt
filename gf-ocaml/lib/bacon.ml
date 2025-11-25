open Utils

let fry c =
   let x = match int_of_string ("0b" ^ c) with
      | n when n > 20 -> n + 2
      | n when n > 8 -> n + 1
      | n -> n in
   from_a0 (getOffset 'a') x


let run a b s =
   s
   |> replace_all a "0"
   |> replace_all b "1"
   |> String.split_on_char ' '
   |> List.map fry
   |> List.to_seq
   |> String.of_seq
