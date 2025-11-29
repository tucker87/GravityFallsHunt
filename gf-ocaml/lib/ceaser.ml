let run i s = s |> A0.of_string |> Seq.map (A0.inc i) |> A0.to_string
