let atbash_char c =
  let l = Letter.of_char c in
  match l with
  | Upper u -> Letter.Upper (25 - u)
  | Lower l -> Letter.Lower (25 - l)
  | Symbol s -> Letter.Symbol s

let run s = String.map (fun c -> atbash_char c |> Letter.to_char) s
