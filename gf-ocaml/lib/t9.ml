let lookup_match m =
  let c = String.get (Pcre2.get_substring m 1) 0 in
  if Char.Ascii.is_digit c then
    let offset = (String.length @@ Pcre2.get_substring m 0) - 1 in
    let d = Char.Ascii.digit_to_int c in
    (((d - 2) * 3) + offset + if d > 7 then 1 else 0)
    |> Letter.lower_of_int |> Letter.to_char
  else c

let run s =
  Pcre2.exec_all
    ~pat:{|([0-9]|\s)((?<=[0-6|8])\1{0,2}|(?<=[7|9])\1{0,3}|(?<=\s))|} s
  |> Array.map lookup_match |> Array.to_seq |> String.of_seq
