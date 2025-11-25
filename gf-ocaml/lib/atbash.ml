let atbash_char c =
  let a0 = Utils.to_a0 c in
   match a0 with
      | Letter (a, offset) -> Utils.from_a0 offset (25 - a)
      | Symbol c -> c

let run s = String.map atbash_char s
