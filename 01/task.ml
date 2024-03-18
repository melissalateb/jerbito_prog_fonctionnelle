let char_succ c = if c< '\255'  then 
int_of_char (succ ((char_of_int c )) else '\000';;

let string_cons c s = (String.make 1 c) ^ s ;;

let cr = "cream";;
let i_u_we = " I scream, you scream, we all scream";;

let expr1 = i_u_we ^ "for ice" ^ cr ;;


let char_succ c = if c< '\255'  then 
int_of_char (succ ((char_of_int c )) else '\000';;

let string_cons c s = (String.make 1 c) ^ s ;;

let char_range lo hi = if (int_of_string lo > (int_of_string hi)
# let rec char_range lo hi =
if int_of_string lo > int_of_string hi then
  []
else
  lo :: char_succ (string_cons lo hi) ;;
  lo :: range (lo + 1) hi;;

  let rec char_range lo hi =
  if lo > hi then ""
  else string_cons lo (char_range (char_succ lo) hi);;


let rec char_range_rev_cat s lo hi =
if hi < lo then
  s
else
  char_range_rev_cat (string_cons hi s) lo (char_succ hi (-1));;


  let rec char_range_rev_cat s lo hi = 
  if hi < lo then
    s
  else 
    char_range_rev_cat (string_cons hi s) lo (char_of_int ((int_of_char hi) - 1));;

2 + 2 ;; 
print_endline "Hello";;


let string_cons c s = (String.make 1 c) ^ s ;;

let cr = "cream";;
let i_u_we = " I scream, you scream, we all scream";;

let expr1 = i_u_we ^ "for ice" ^ cr ;;


let char_succ =
if c < '\255' then 
 c |> int_of_char |> succ |> char_of_int
  else 
    '\000';;

let string_cons c s = (String.make 1 c) ^ s ;;

let rec char_range lo hi =
if int_of_string lo > int_of_string hi then
  []
else
  lo :: char_succ (string_cons lo hi) ;;
  lo :: range (lo + 1) hi;;

(* Concaténation d'un caractère et d'une chaîne *)
let string_cons c s = String.make 1 c ^ s;;

(* Successeur d'un caractère *)
let char_succ c =
  if c < '\255' then
    char_of_int ((int_of_char c) + 1)
  else
    '\000';;

(* Plage de caractères en ordre croissant *)
let rec char_range lo hi =
  if lo > hi then
    ""
  else
    string_cons lo (char_range (char_succ lo) hi);;

(* Plage de caractères en ordre décroissant, concaténée à une chaîne existante *)
let rec char_range_rev_cat s lo hi =
  if hi < lo then
    s
  else
    char_range_rev_cat (string_cons hi s) lo (char_succ hi (-1));;

(* Réutilisation de char_range_rev_cat pour générer une plage de caractères en ordre décroissant *)
let char_range_rev lo hi =
  char_range_rev_cat "" hi lo;;

(* Vérification de palindrome *)
let rec is_palindrome s =
  let len = String.length s in
  if len <= 1 then
    true
  else
    if s.[0] = s.[len - 1] then
      is_palindrome (String.sub s 1 (len - 2))
    else
      false;;

(* Exponentiation rapide *)
let rec pow x n =
  if n = 0 then
    1
  else if n mod 2 = 0 then
    let y = pow x (n / 2) in y * y
  else
    x * (pow x (n - 1));;

(* Division utilisant l'algorithme d'Euclide *)
let rec div n d =
  if n < d then
    0
  else
    1 + div (n - d) d;;
