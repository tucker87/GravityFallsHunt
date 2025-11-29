let ceaser_char i c = c |> A0.of_char |> A0.inc i |> A0.to_char
let run i s = s |> String.map (ceaser_char i)
