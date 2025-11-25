open Utils

let plusplus_wrap len i =
   let idx = !i in
   i := (!i+1) mod len;
   idx

let next_offset k = 
   let i = ref 0 in
   let pp = plusplus_wrap (String.length k) in
   fun () -> -to_a0_simple (String.get k (pp i))

let _run get_offset c = (get_offset () |> increment_letter)  c

let run k s =
   (next_offset k |> _run |> skip_non_alpha |> String.map) s
