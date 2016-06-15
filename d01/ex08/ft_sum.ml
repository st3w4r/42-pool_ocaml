(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_sum.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/15 22:51:55 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/15 23:42:51 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
 * ft_sum (fun i -> float_of_int (i * i)) 1 10;;
 *)
let rec ft_sum f bl bu =
    if bl = (bu+1)  then f (bl + bu)
    else if bl > bu then nan
    else ft_sum f (bl+1) (bu-1)
