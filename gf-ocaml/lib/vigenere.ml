open Utils

let zip_when f d xs ys =
   let y_dispenser = Seq.to_dispenser ys in
   xs |> Seq.map (fun x -> if f x then (x, y_dispenser () |> Option.get) else (x, d))

let char_to_negative c =
   c |> char_to_letter |> letter_to_int |> Int.neg

let run k s =
   zip_when is_alpha 0 (String.to_seq s) (String.to_seq k |> Seq.map char_to_negative |> Seq.cycle) 
   |> Seq.map (fun (a, b) -> increment_letter b a)
   |> String.of_seq
