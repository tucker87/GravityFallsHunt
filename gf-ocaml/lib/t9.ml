let table9 c i = 
   match c with
      | "2" -> [|"a"; "b"; "c"|].(i)
      | "3" -> [|"d"; "e"; "f"|].(i)
      | "4" -> [|"g"; "h"; "i"|].(i)
      | "5" -> [|"j"; "k"; "l"|].(i)
      | "6" -> [|"m"; "n"; "o"|].(i)
      | "7" -> [|"p"; "q"; "r"; "s"|].(i)
      | "8" -> [|"t"; "u"; "v"|].(i)
      | "9" -> [|"w"; "x"; "y"; "z"|].(i)
      | _ -> c

let get_match_length m = Pcre2.get_substring m 0 |> String.length

let lookup_match m = table9 (Pcre2.get_substring m 1) (get_match_length m - 1) 

let regex = Pcre2.regexp {|([0-9]|\s)((?<=[0-6|8])\1{0,2}|(?<=[7|9])\1{0,3}|(?<=\s))|}

let run s =
   Pcre2.exec_all ~rex:regex s
   |> Array.map lookup_match
   |> Array.to_list
   |> String.concat ""

