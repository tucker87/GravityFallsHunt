let get_info ms =
  let s = Pcre2.get_substring ms 0 in
  String.get s 0, String.length s - 1


let lookup_match (c, offset) =
  match A0.of_char c with
  | Digit d ->
    (((d - 2) * 3) + offset + if d > 7 then 1 else 0) |> A0.lower_of_int |> A0.to_char
  | _ -> c


let run s =
  Pcre2.exec_all ~pat:{|([0-9]|\s)((?<=[0-6|8])\1{0,2}|(?<=[7|9])\1{0,3}|(?<=\s))|} s
  |> Array.map get_info
  |> Array.map lookup_match
  |> Array.to_seq
  |> String.of_seq
