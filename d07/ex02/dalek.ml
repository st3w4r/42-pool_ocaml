(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   dalek.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 19:47:26 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/22 21:00:53 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class dalek =
    object
        val _name:string =
            begin
                Random.self_init ();
                "Dalek"
                ^ String.make 1 (char_of_int ((Random.int 26) + 65))
                ^ String.make 1 (char_of_int ((Random.int 26) + 97))
                ^ String.make 1 (char_of_int ((Random.int 26) + 97))
            end
        val mutable _hp = 100
        val mutable _shield:bool = true

        (*GETTER*)
        method get_shield = _shield

        initializer (Random.self_init ())
        method exterminate =
            begin
            if _shield = true
            then _shield <- false
            else _shield <- true
            end
        method to_string = _name ^ " " ^ (string_of_int _hp) ^ " HP Shield: " ^
                            (if (_shield)
                            then "TRUE"
                            else "FALSE";)
        method talk =
            begin
                let sentences = [|"Explain! Explain!";
                                "Exterminate! Exterminate!";
                                "I obey!";
                                "You are the Doctor! You are the enemy of the Daleks!"|]
                in
                print_endline (Array.get sentences (Random.int (Array.length
                sentences)))
            end

        method die = print_endline "Emergency Temporal Shift!"
    end
