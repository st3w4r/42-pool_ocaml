(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   encode.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/15 13:27:08 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/15 17:36:03 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_same n = match n with
                | (n0, n1) when n0 = n1 -> true
                | (n0, _) -> false


let rec process_list i n lst =
            if is_same ((List.nth lst i), (List.nth lst (i+1)))
            then (process_list (i+1) (i+1) lst)
            else (n, (List.nth lst i))

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


let encode lst =
    process_list 0 lst

let main () =
    encode [2; 2; 2; 2; 42; 42; 100; 101]

let () = main ()
