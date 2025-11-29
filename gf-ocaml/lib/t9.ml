module StringMap = Map.Make (String)

let table9 =
  StringMap.of_seq
  @@ List.to_seq
       [
         ("2", [ "a"; "b"; "c" ]);
         ("3", [ "d"; "e"; "f" ]);
         ("4", [ "g"; "h"; "i" ]);
         ("5", [ "j"; "k"; "l" ]);
         ("6", [ "m"; "n"; "o" ]);
         ("7", [ "p"; "q"; "r"; "s" ]);
         ("8", [ "t"; "u"; "v" ]);
         ("9", [ "w"; "x"; "y"; "z" ]);
       ]

(*
let table10 i = function
   | "2" -> 0
   | "3" -> 3
   | "4" -> 6
   | "5" -> 9
   | "6" -> 12
   | "7" -> 15
   | "8" -> 19
   | "9" -> 22
   | c -> c
*)

let lookup_match m =
  let m1 = Pcre2.get_substring m 0 in
  let m2 = Pcre2.get_substring m 1 in
  match StringMap.find_opt m2 table9 with
  | Some d -> List.nth d (String.length m1 - 1)
  | None -> m2

let run s =
  Pcre2.exec_all
    ~pat:{|([0-9]|\s)((?<=[0-6|8])\1{0,2}|(?<=[7|9])\1{0,3}|(?<=\s))|} s
  |> Array.map lookup_match |> Array.to_list |> String.concat ""
