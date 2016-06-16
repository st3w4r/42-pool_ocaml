(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   gray.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/16 21:21:59 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/16 22:44:18 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
 * 1) Let the list of (n-1)-bit Gray codes be L1. Create another list L2 which
 * is reverse of L1.
 * 2) Modify the list L1 by prefixing a ‘0’ in all codes of L1.
 * 3) Modify the list L2 by prefixing a ‘1’ in all codes of L2.
 * 4) Concatenate L1 and L2. The concatenated list is required list of n-bit
 * Gray codes
 *)


let rec revert lst acc = match lst with
    | [] -> acc
    | head::queue -> revert queue ([head] @ acc)

let rec map lst acc = match lst with
    | [] -> acc
    | head::queue -> map queue (acc @ ["0"])

let rec gray n =
    let l1 = ["00"; "01"; "11"; "10"] in
    let l2 = (revert l1 []) in
    let rec loop i acc =
        if i < n then (
            map l1 acc
        )
        else acc
            in loop 0 []

let main () =

    let () = main ()
