let ceaser_char i c =
   Utils.increment_letter i c

let run i s = s |> String.map (ceaser_char i)
