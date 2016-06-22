(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 14:09:17 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/22 20:47:13 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
(*
    let man = new People.people ("Mark") in
    let the_doctor = new Doctor.doctor "Doc" 42 man in
    print_endline the_doctor#to_string;
    the_doctor#talk;
    the_doctor#travel_in_time 20 5;
    the_doctor#use_sonic_screwdriver;
    print_endline the_doctor#to_string;
(*    the_doctor#call_regenerate; *)
    *)
    let aDalek = new Dalek.dalek in

    print_endline aDalek#to_string;
    
    if (aDalek#get_shield) then print_endline "TRUE" else print_endline "FALSE";
    aDalek#exterminate;
    if (aDalek#get_shield) then print_endline "TRUE" else print_endline "FALSE";
    aDalek#exterminate;
    if (aDalek#get_shield) then print_endline "TRUE" else print_endline "FALSE";

    aDalek#talk;
    aDalek#die;
    print_endline ""
