let zip_when f d xs ys =
  let y_dispenser = Seq.to_dispenser ys in
  xs |> Seq.map (fun x -> if f x then x, y_dispenser () |> Option.get else x, d)

let letter_to_negative c = c |> A0.to_int |> Int.neg

let run k s =
  zip_when A0.is_aplha 0 (A0.of_string s) (A0.of_string k |> Seq.map A0.to_int |> Seq.cycle)
  |> Seq.map (fun (a, b) -> A0.sub b a)
  |> A0.to_string
