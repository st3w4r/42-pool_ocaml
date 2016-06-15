(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   encode.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/15 13:27:08 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/15 19:54:27 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
let is_same n = match n with
                | (n0, n1) when n0 = n1 -> true
                | (n0, _) -> false


let rec process_list i n lst =
            if is_same ((List.nth lst i), (List.nth lst (i+1)))
            then (process_list (i+1) 1 lst)
            else (n, (List.nth lst i))
*)

(*
let is_same n = match n with
                | (n0, n1) when n0 = n1 -> true
                | (n0, _) -> false


let rec process_list n lst =
            if is_same ("a", "b")
            then process_list 2 lst
            else (n, "a")
*)



(*
let rec each_elem el0 el1 lst = match lst with
    | [] -> (0, 0)
    | head::next::queue -> (
        if head = next then 
        else 0
    )
    | head::queue -> 0
*)

(*
let each_elem el0 el1 n =
    if (is_same el0 el1) then (n + 1, el0)
    else (n, el0)

let 
*)


(*let rec map x lst = match lst with
    | [] -> (1, x)
*)

let identity lst =
    let rec revert lst acc = match lst with
        | [] -> acc
        | head::queue -> iden queue (head::acc)
    in revert (revert lst []) []

let rec counter n x lst = match lst with
    | [] -> 0
    | tete::queue -> when tete = queue 

let encode lst =
    iden (iden lst []) []

let main () =
    encode [2; 2; 2; 2; 42; 42; 100; 101]

let () = main ()
