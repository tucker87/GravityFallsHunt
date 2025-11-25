module AtBash = Gf_ocaml.Atbash
module Ceaser = Gf_ocaml.Ceaser
module T9 = Gf_ocaml.T9
module Vigenere = Gf_ocaml.Vigenere

let log = print_endline

let () = 
   log "\nS02 E01";
   "wjz ok ep xacejo" |> Ceaser.run 4 |> log;

   log "\nS02 E02";
   "qi erh xli fscw ex xas eq" |> Ceaser.run (-4) |> log;

   log "\nS02 E03";
   "rg nzb yv wruurxfog gl xlmgrmfv zolmv" |> AtBash.run |> log;
   "wrhxliw.tt/aXCnU93QEE" |> AtBash.run |> log;

   log "\nS02 E04"; 
   "6633998 933:3355 84433 2224425555553366433 4447777 3666882255533:3" |> T9.run |> log;

   log "\nDiscord: Mortius Role";
   "dm hbvc ai qkmec awjy Kzsxrw Xzwhtxuk!" |> (Vigenere.run "cipherhunters") |> log;

(* log('\nDiscord: Mortius Role') *)
(* log(vigenere('cipherhunters')('dm hbvc ai qkmec awjy Kzsxrw Xzwhtxuk!')) *)
(**)
(* log('\nDiscord: Mortius Role 2') *)
(* log(vigenere('huntingciphers')("Qofm arkkvv dlf'k wulbvt gvbtuxzgu bram")) *)
(**)
(* log('\nDiscord: Casper Role') *)
(* log(vigenere('AEDFBC')('Tlujf facv qfht xr xvrpsuy uje Olhluteuyft!')) *)
(**)
(* log('\nDiscord:  Will discord puzzles ever interact with episode puzzles') *)
(* pipe( *)
(*   'mwB azdbyvr lznwbvs kjlve zbdzdozpsqi naclmom ,zmmwfvo yjp znk mopyvfz yazjomb fgvu MQIME zzvanma zjk oqiwscl pp q omcbcvn nsreao', *)
(*   vigenere('reverse'), *)
(*   atBash, *)
(*   reverse_words, *)
(*   log, *)
(* ) *)
(**)
(* log( *)
(*   '\nWould you rather have unlimited bacon, but no games? Or games, unlimited games, but no games?', *)
(* ) *)
(* pipe( *)
(*   'homozv urquom jzjfre vammnj uwqvay jzjuke hnmjzj uqehom jnjgiq vfmjnv ufjvom jnjtre vaxvnv uiqhom anjufe vayjsj ufehny uzjure vapvnv urqmom jnogfe uamjzv ufqgom vnjxfe homjev ufjhom jnvtfe hoxjzj ufqhap jzjuf qvfmjz jgkqha yjnvtr evamun vufhva yanjgf eaamjn jgreua mvzuuf evopjn juwqho monjtfe vaxjnj uiqhfmj', *)
(*   vigenere('unlimited'), *)
(*   replace(/[^b|n|\s]/g)(''), *)
(*   bacon('b')('n'), *)
(*   log, *)
(* ) *)
