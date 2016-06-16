(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   crossover.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/16 13:59:20 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/16 20:50:25 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let crossover lst_l lst_r =
    let rec check_lstl lst_l lst_r acc = match lst_l with
        | hd::tl -> (
            let rec check_lstr lst_r el acc = match lst_r with
                | hd::tl -> (
                    if hd = el then hd::acc
                    else check_lstr tl el acc
                )
                | [] -> acc
            in
            check_lstl tl lst_r (check_lstr lst_r hd acc)
            )
        | [] -> acc
            (*check_lstr lst_r hd (check_lstl tl lst_r acc)*)
(*
                if (
                    let rec check_acc lst_acc el = match lst_acc with
                        | hd::tl -> (
                            if hd = el then true
                            else check_acc tl el
                        )
                        | [] -> false
                    in check_acc acc hd
                    ) = true
                then []
                else check_lstl tl lst_r acc
            )*)

    in check_lstl lst_l lst_r []

