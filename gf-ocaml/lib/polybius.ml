open Utils

type index =
   | Number of int
   | Pair of int * int
   | Space

let standard_table = [|
   [|"V"; "A"; "F"; "L"; "Q"|];
   [|"W"; "B"; "G"; "M"; "R"|];
   [|"X"; "C"; "H"; "N"; "S"|];
   [|"Y"; "D"; "I"; "O"; "T"|];
   [|"Z"; "E"; "K"; "P"; "U"|]|]

let rotated_table = [|
   [|"E"; "A"; "B"; "C"; "D"|];
   [|"K"; "F"; "G"; "H"; "I"|];
   [|"P"; "L"; "M"; "N"; "O"|];
   [|"U"; "Q"; "R"; "S"; "T"|];
   [|"Z"; "V"; "W"; "X"; "Y"|]|]

let lookup table x y =
   table.(x-1).(y-5)

let search lookup_t = function
      | Number x -> lookup_t x 5
      | Pair (x, y) when x < y -> lookup_t x y
      | Pair (x, y) -> lookup_t y x
      | Space -> " "


let rec string_to_pairs = function
      | [] -> []
      | ' ' :: rest -> Space :: string_to_pairs rest
      | a :: b :: rest when b = ' ' || b = 'x' -> Number (Char.Ascii.digit_to_int a) :: string_to_pairs rest
      | a :: b :: rest -> Pair (Char.Ascii.digit_to_int a, Char.Ascii.digit_to_int b) :: string_to_pairs rest
      | a :: [] -> Number (Char.Ascii.digit_to_int a) :: []


let _run table input =
   let lookup_t = lookup table in
   List.map (search lookup_t) (string_to_pairs @@ explode input) |> String.concat ""

let run input =
   _run standard_table input

let run_rotated input =
   _run rotated_table input
