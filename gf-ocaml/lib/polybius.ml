open Utils

type index =
   | Number of int
   | Pair of int * int
   | Space

let handle_ij x = if x >= 9 then x + 1 else x

let standard_formula x y =
   (y - 6) * 5 + x - 1 |> handle_ij |> from_a0 65 |> string_of_char

let rotated_formula x y =
   (x - 1) * 5 + y - 6 |> handle_ij |> from_a0 65 |> string_of_char

let lookup table x y = table.(x-1).(y-5)

let search f = function
      | Number x -> f x 10
      | Pair (x, y) when x < y -> f x y
      | Pair (x, y) -> f y x
      | Space -> " "

let digit = Char.Ascii.digit_to_int

let rec string_to_pairs = function
      | [] -> []
      | ' ' :: rest -> Space :: string_to_pairs rest
      | a :: b :: rest when b = ' ' -> Number (digit a) :: Space :: string_to_pairs rest
      | a :: b :: rest when b = '0' -> Number (digit a) :: string_to_pairs rest
      | a :: b :: rest -> Pair (digit a, digit b) :: string_to_pairs rest
      | a :: [] -> Number (digit a) :: []

let _run formula input =
   input |> Utils.explode |> string_to_pairs |> List.map @@ search formula |> String.concat ""

let run input =
   _run standard_formula input

let run_rotated input =
   _run rotated_formula input
