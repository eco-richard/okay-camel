(* What is getting put into utop *)
let x = 50
let rec range a b = if a > b then [] else a :: range (a + 1) b
