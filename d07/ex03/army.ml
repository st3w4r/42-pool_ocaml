(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/23 16:28:17 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/23 23:27:20 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class ['a] army =
    object
        val _lst : 'a list = []

        (*GETTER*)
        method get_lst = _lst;

        method add (item : 'a) = {< _lst = List.append _lst [item] >}
        method delete =
            begin
                let lst_new lst = match lst with
                | hd::tl -> tl
                | [] -> lst
                in {< _lst = List.rev (lst_new (List.rev _lst)) >}
            end
    end
