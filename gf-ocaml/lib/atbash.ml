let atbash_char c =
  let l = A0.of_char c in
  match l with
  | Upper u -> A0.Upper (25 - u)
  | Lower l -> A0.Lower (25 - l)
  | Symbol _ | Digit _ -> l


let run s = String.map (fun c -> atbash_char c |> A0.to_char) s
