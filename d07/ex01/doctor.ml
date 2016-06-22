(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 16:46:49 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/22 19:40:19 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class doctor name age people =
    object (self)
        val _name:string = name
        val mutable _age:int = age
        val _sidekick:People.people = people
        val mutable _hp = 100

        initializer print_endline "Doctor Created"
        method to_string = _name ^ " " ^ (string_of_int _age) ^ " years old " ^
        (string_of_int _hp) ^ " HP " ^ (_sidekick#to_string)
        method talk = print_endline "Hi! I’m the Doctor!"
        method travel_in_time (start:int) (arrival:int) = (
            print_endline "TARDIS"
        )
        method use_sonic_screwdriver = print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"
        method private regenerate = _hp <- 100
    end

