type index =
  | Number of int
  | Pair of int * int
  | Space

let handle_ij x = if x >= 9 then x + 1 else x

let standard_formula x y =
  ((y - 6) * 5) + x - 1 |> handle_ij |> A0.upper_of_int |> A0.to_char

let rotated_formula x y =
  ((x - 1) * 5) + y - 6 |> handle_ij |> A0.upper_of_int |> A0.to_char

let lookup table x y = table.(x - 1).(y - 5)

let search f = function
  | Number x -> f x 10
  | Pair (x, y) when x < y -> f x y
  | Pair (x, y) -> f y x
  | Space -> ' '

let digit = Char.Ascii.digit_to_int

let rec to_pairs = function
  | [] -> []
  | ' ' :: rest -> Space :: to_pairs rest
  | a :: b :: rest when b = ' ' -> Number (digit a) :: Space :: to_pairs rest
  | a :: b :: rest when b = '0' -> Number (digit a) :: to_pairs rest
  | a :: b :: rest -> Pair (digit a, digit b) :: to_pairs rest
  | a :: [] -> Number (digit a) :: []

let _run formula input =
  input
  |> Utils.explode
  |> to_pairs
  |> List.map (search formula)
  |> List.to_seq
  |> String.of_seq

let run input = _run standard_formula input
let run_rotated input = _run rotated_formula input
