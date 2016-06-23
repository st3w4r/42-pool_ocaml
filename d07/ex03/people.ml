(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 14:09:05 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/23 20:32:11 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class people name =
    object (self)
        val _name:string = name
        val mutable _hp = 100

        method set_hp hp = (
            _hp <- hp;
            if (_hp <= 0)
            then (_hp <- 0; self#die)
            else ()
        )

        initializer print_endline "People Created"
        method to_string = _name ^ " " ^ (string_of_int _hp) ^ " HP"
        method talk = print_endline ("I’m "^ _name ^"! Do you know the Doctor?")
        method die = print_endline "Aaaarghh!"
    end
