let ceaser_char i c =
   c |> Letter.char_to_letter |> Letter.increment_letter i |> Letter.letter_to_char

let run i s = s |> String.map (ceaser_char i)
