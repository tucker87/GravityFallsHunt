open Gf_ocaml
open Ciphers
module Utils = Gf_ocaml.Utils

let log = print_endline

let () =
  log "\nS02 E01";
  "wjz ok ep xacejo" |> ceaser 4 |> log

let () =
  log "\nS02 E02";
  "qi erh xli fscw ex xas eq" |> ceaser (-4) |> log

let () =
  log "\nS02 E03";
  "rg nzb yv wruurxfog gl xlmgrmfv zolmv" |> atbash |> log;
  "wrhxliw.tt/aXCnU93QEE" |> atbash |> log

let () =
  log "\nS02 E04";
  "6633998 933:3355 84433 2224425555553366433 4447777 3666882255533:3" |> t9 |> log

let () =
  log "\nDiscord: Mortius Role";
  "dm hbvc ai qkmec awjy Kzsxrw Xzwhtxuk!" |> vigenere "cipherhunters" |> log

let () =
  log "\nDiscord: Mortius Role 2";
  "Qofm arkkvv dlf'k wulbvt gvbtuxzgu bram" |> vigenere "huntingciphers" |> log

let () =
  log "\nDiscord: Casper Role";
  "Tlujf facv qfht xr xvrpsuy uje Olhluteuyft!" |> vigenere "AEDFBC" |> log

let () =
  log "\nDiscord:  Will discord puzzles ever interact with episode puzzles";
  "mwB azdbyvr lznwbvs kjlve zbdzdozpsqi naclmom ,zmmwfvo yjp znk mopyvfz yazjomb fgvu MQIME zzvanma zjk oqiwscl pp q \
   omcbcvn nsreao"
  |> vigenere "reverse"
  |> atbash
  |> Utils.reverse_words
  |> log

let () =
  log "\nWould you rather have unlimited bacon, but no games? Or games, unlimited games, but no games?";
  "homozv urquom jzjfre vammnj uwqvay jzjuke hnmjzj uqehom jnjgiq vfmjnv ufjvom jnjtre vaxvnv uiqhom anjufe vayjsj \
   ufehny uzjure vapvnv urqmom jnogfe uamjzv ufqgom vnjxfe homjev ufjhom jnvtfe hoxjzj ufqhap jzjuf qvfmjz jgkqha \
   yjnvtr evamun vufhva yanjgf eaamjn jgreua mvzuuf evopjn juwqho monjtfe vaxjnj uiqhfmj"
  |> vigenere "unlimited"
  |> Utils.replace_all {|[^b|n|\s]|} ""
  |> bacon "b" "n"
  |> log

let () =
  log
    "\n\
     Other than codes/ciphers, do you have any other favourite puzzles that you enjoy doing? (crosswords, sudoku, \
     wordsearches, etc)";
  "29 40481019 4939 471016363659 3629201 48401939204 174049 833957 7359 261656394729491 1916293659 30405050361 2948 \
   94281 16303 263639 2647101"
  |> polybius_rotated
  |> log
