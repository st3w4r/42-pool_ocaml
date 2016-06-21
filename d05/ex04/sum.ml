(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sum.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/21 11:07:08 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/21 15:53:44 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let sum = (+.)

let () =
    print_float (sum 2.0 2.2); print_endline "";
    print_float (sum 1.0 (-1.2)); print_endline "";
    print_float (sum 0.2 0.2); print_endline "";
    print_float (sum 0.0 0.0); print_endline ""
