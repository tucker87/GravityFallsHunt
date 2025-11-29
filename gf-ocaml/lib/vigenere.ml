let zip_when f d xs ys =
  let y_dispenser = Seq.to_dispenser ys in
  xs
  |> Seq.map (fun x ->
      if f x then (x, y_dispenser () |> Option.get) else (x, d))

let letter_to_negative c = c |> Letter.to_int |> Int.neg

let run k s =
  zip_when Letter.is_aplha 0 (Letter.of_string s)
    (Letter.of_string k |> Seq.map letter_to_negative |> Seq.cycle)
  |> Seq.map (fun (a, b) -> Letter.inc b a)
  |> Letter.to_string
