type 'a t = (int * 'a) list

let empty = [] ;;

let find n dic = List.assoc n dic

let add (key,value) dico = (key,value) :: dico

let del key dico = List.remove_assoc key dico