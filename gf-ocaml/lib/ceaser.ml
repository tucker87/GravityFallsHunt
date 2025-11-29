let ceaser_char i c =
   c |> Letter.of_char |> Letter.inc i |> Letter.to_char

let run i s = s |> String.map (ceaser_char i)
