open Letter

let zip_when f d xs ys =
   let y_dispenser = Seq.to_dispenser ys in
   xs |> Seq.map (fun x -> if f x then (x, y_dispenser () |> Option.get) else (x, d))

let letter_to_negative c =
   c |> letter_to_int |> Int.neg

let run k s =
   zip_when not_symbol 0 (string_to_letters s) (string_to_letters k |> Seq.map letter_to_negative |> Seq.cycle)
   |> Seq.map (fun (a, b) -> increment_letter b a)
   |> letters_to_string
