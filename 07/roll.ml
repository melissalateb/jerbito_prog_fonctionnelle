type 'a t = 'a * 'a list

let empty = [] 

let unit x = (x, empty)
let cons x (y, u) = x, y :: u
let hd (x, _) = x
let tl (_, u) = match u with
  | [] -> failwith "tl"
  | x :: u -> (x, u)
(*calculer la longeur d'une liste *)
let length (_, u) = 1 + List.length u
(*  *)
let append (a, u) (b, v) = (a,u @ b :: v)
(* concatène une liste de liste en une seule liste  
let rec concat l1 l2 = match l1 with 
| [] -> l2
| x :: u -> x :: concat u l2 *)

(* let concat (x, l) =
  let rec aux acc = function
    | [] -> acc
    | (y, lst)::ys -> aux (acc @ [y] @ lst) ys
  in match l with
  | [] -> (x, [])
  | y::ys -> aux [y] l
 *)
let rev (x, lst) =
  match List.rev (x::lst) with
  | [] -> failwith "Impossible case: non-empty list turned empty"
  | x::xs -> (x, xs)

let map f (x, lst) = (f x, List.map f lst)

let concat_map f (x, lst) =
  let (x', lst') = f x in
  List.fold_right (fun x (y, l) -> append (f x) (y, l)) lst (x', lst')
