(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/23 16:28:17 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/23 20:00:46 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class ['a] army (x:'a list) =
    object
(*        type t = People.people | Doctor.doctor | Dalek.dalek*)
        val mutable _lst : 'a list = x

        (*GETTER*)
        method get_lst = _lst;

        method add (item : 'a) =
            begin
               _lst <- List.append _lst [item]
            end
        method delete =
            begin
                let lst_new lst = match lst with
                | hd::tl -> tl
                | [] -> lst
                in _lst <- List.rev (lst_new (List.rev _lst))
            end
    end
