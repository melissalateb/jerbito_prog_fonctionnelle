(* Utilisation du foncteur   *)
module IntSet = Set.Make(struct
type t = int 
let compare a b = a - b
end ) ;;


let has_dupes lst =
let rec aux set = function
  | [] -> false
  | x::xs -> if IntSet.mem x set then true else aux (IntSet.add x set) xs
in aux IntSet.empty lst

(* j'ai fait la fct autrement corrige  *)
(* 
let has_dupes l = 
  let rec list_in_ens ll = match l with
  |[] -> {}
  | x::xs -> IntSet.add x list_in_ens xs
  in  
  if l.length > (ensemble l).length then true else false
   *)

(* Froncteur Map *)
module IntMap  = Map.Make(struct
type t= int
let compare a b =  a-b 
end) ;;

(* of_list 
dans un ensemve ya un eseul type
un dict deuc valeurs cles valeurs

type t type clés -> compare sert a comparer des clés 
les fonctions que le froncteur make nous donne sont polymorphes 
'a  --> pas un type precis 
definir nous même,


*)