(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 14:09:05 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/22 17:04:28 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class people name =
    object
        val _name:string = name
        val mutable _hp = 100

        initializer print_endline "People Created"
        method to_string = _name
        method talk = print_endline ("I’m "^ _name ^"! Do you know the Doctor?")
        method die = print_endline "Aaaarghh!"
    end
