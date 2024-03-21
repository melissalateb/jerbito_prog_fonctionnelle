module CharMap  = Map.Make(struct
type t= char
let compare a b = (int_of_char a - int_of_char b) 
end) ;;
module CharMap = Map.Make(Char);;
let char_digit n =  char_of_int(n + 48) ;;
(* Clé 0 du caractere 0 est 1 --> une seule fois 
demonstration 
tout les nombres commence par 1 sauf 0 (en binaire)
*)