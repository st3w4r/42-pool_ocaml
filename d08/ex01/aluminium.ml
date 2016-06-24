(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hydrogen.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 11:32:17 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 12:13:43 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class aluminium =
    object (self)
        inherit Atom.atom

        method name = "Aluminium"
        method symbole = "Al"
        method atomic_number = 13
        method to_string = self#name ^ " " ^ self#symbole ^ " " ^ (string_of_int self#atomic_number)
        method equals (a : Atom.atom) = (a#atomic_number = self#atomic_number)
    end
