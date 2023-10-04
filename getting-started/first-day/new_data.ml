type color = Red | Blue | Green | Yellow | RGB of int * int * int

let color_list = [ Red; Blue; Red ]

(* Data type for a generic binary tree*)

type 'a tree = Leaf | Node of 'a tree * 'a * 'a tree
