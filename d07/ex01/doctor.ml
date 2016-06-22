(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 16:46:49 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/22 18:12:12 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class doctor name age people =
    object
        val _name:string = name
        val mutable _age:int = age
        val _sidekick:People.people = people
        val mutable _hp = 100

        initializer print_endline "Doctor Created"
        method to_string = _name ^ " " ^ (string_of_int _age) ^ " years old " ^ (string_of_int _hp) ^ " HP"
        method talk = print_endline "Hi! I’m the Doctor!"
        method travel_in_time (start:int) (arrival:int) = (
            print_endline "TARDIS"
        )
        method use_sonic_screwdriver = print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"
        method private regenerate = _hp <- 100
        
        (*--TEST--*)
        (*
        method call_regenerate = (
            _hp <- 100
            self#to_string
            self#regenerate
            self#to_string
        )
*)
    end

