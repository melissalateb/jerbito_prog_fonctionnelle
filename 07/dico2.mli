type 'a t
val empty : 'a t
val find : int -> 'a t -> 'a
val add : int * 'a -> 'a t -> 'a t
val del : int -> 'a t -> 'a t

(* Dico2.find :
il faut preciser d'executer la fct find du dico2
Pour être independant 
module Dico : DicoType = dico1

donc executer 
Dico.find sans preciser 1 ou 2 car on laurais déclaré dans le mdule

module InSet  = Set.Make(struct
type t = int
let compare a b = a - b
end );;

type t = int ;;

let compare a b = a - b
end);;
module InSet :
  sig
    type elt = int
    type t
    val empty : t
    val is_empty : t -> bool
    val mem : elt -> t -> bool
    val add : elt -> t -> t
    val singleton : elt -> t
    val remove : elt -> t -> t
    val union : t -> t -> t
    val inter : t -> t -> t
    val disjoint : t -> t -> bool
    val diff : t -> t -> t
    val compare : t -> t -> elt
    val equal : t -> t -> bool
    val subset : t -> t -> bool
    val iter : (elt -> unit) -> t -> unit
    val map : (elt -> elt) -> t -> t
    val fold : (elt -> 'a -> 'a) -> t -> 'a -> 'a
    val for_all : (elt -> bool) -> t -> bool
    val exists : (elt -> bool) -> t -> bool
    val filter : (elt -> bool) -> t -> t
    val filter_map : (elt -> elt option) -> t -> t
    val partition : (elt -> bool) -> t -> t * t
    val cardinal : t -> elt
    val elements : t -> elt list
    val min_elt : t -> elt
    val min_elt_opt : t -> elt option
    val max_elt : t -> elt
    val max_elt_opt : t -> elt option
    val choose : t -> elt
    val choose_opt : t -> elt option
    val split : elt -> t -> t * bool * t
    val find : elt -> t -> elt
    val find_opt : elt -> t -> elt option
    val find_first : (elt -> bool) -> t -> elt
    val find_first_opt :
      (elt -> bool) -> t -> elt option
    val find_last : (elt -> bool) -> t -> elt
    val find_last_opt :
      (elt -> bool) -> t -> elt option
    val of_list : elt list -> t
    val to_seq_from : elt -> t -> elt Seq.t
    val to_seq : t -> elt Seq.t
    val to_rev_seq : t -> elt Seq.t
    val add_seq : elt Seq.t -> t -> t
    val of_seq : elt Seq.t -> t
  end

si on a une fct compare 'est une mauvaise idée

un foncteur a besoin d'un type et d'une fonction
difference de longeur entre les liste et les ensembles 
let ...c
let rec listense l 
[
|a::b -> {a}.add listeense b
in listen l .leng > l return true 
if 
*)