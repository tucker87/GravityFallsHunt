open Letter

let atbash_char c =
   let l = char_to_letter c in
   match l with
   | Upper u -> Upper (25 - u)
   | Lower l -> Lower (25 - l)
   | Symbol s -> Symbol s

let run s = String.map (fun c -> atbash_char c |> Letter.letter_to_char) s
