type color = Red | Blue | Green | Yellow | RGB of int * int * int

let color_list = [ Red; Blue; Red ]

(* Data type for a generic binary tree*)

type 'a tree = Leaf | Node of 'a tree * 'a * 'a tree

let t =
  Node (Node (Leaf, 1, Leaf), 2, Node (Node (Leaf, 3, Leaf), 4, Leaf));

let rec total t =
  match t with 
    | Leaf -> 0
    | Node (l, x, r) -> total l + x + total r;;

let rec flip t = 
  match t with
  | Leaf -> Leaf
    | Node (l, x, r) -> Node (flip r, x flip l);;
