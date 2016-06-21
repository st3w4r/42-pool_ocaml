(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   eu_dist.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/21 14:03:12 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/21 15:49:17 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let eu_dist a  b =
    let res = ref 0.0 in
    for i = 0 to (Array.length a) - 1  do
        res := ((a.(i) -. b.(i)) *. (a.(i) -. b.(i))) +. !res
    done;
    sqrt !res

let () =
    print_float (eu_dist [|2.0; 4.2; 5.3|] [|6.0; 4.4; 6.4|]); print_endline "";
    print_float (eu_dist [|2.0;|] [|6.2;|]); print_endline "";
    print_float (eu_dist [|1.;7.;|] [|8.;6.;|]); print_endline ""

