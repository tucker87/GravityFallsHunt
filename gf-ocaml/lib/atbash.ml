open Utils

let atbash_char c =
  let (a, offset) = to_a0_safe c in
  from_a0 offset (25 - a)

let run s = String.map (skip_non_alpha atbash_char) s
