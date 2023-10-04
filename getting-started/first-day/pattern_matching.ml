let rec factorial n = if n <= 1 then 1 else n * factorial (n - 1)
let rec factorial_pm n = match n with 0 | 1 -> 1 | x -> x * factorial (x - 1)
let head = List.hd [ 1; 2; 3 ] (* returns the head *)
let tail = List.tl [ 1; 2; 3 ] (* returns the tail *)
let rec total l = match l with [] -> 0 | h :: t -> h + total t

(* The `h::t` pattern indicates having the head and tail as each a part*)
(* Similar to haskell's (x:xs), I think*)

let rec length l = match l with [] -> 0 | _ :: t -> 1 + length t

(* My own append function *)

let rec append l x = match l with [] -> [ x ] | h :: t -> h :: append t x
let rec my_map f l = match l with [] -> [] | h :: t -> f h :: my_map f t
let add a b = a + b
let add_6 = add 6
