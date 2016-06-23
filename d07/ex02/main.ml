(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 14:09:17 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/23 16:21:27 by ybarbier         ###   ########.fr       *)
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
(*
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
*)
    let aDalek = new Dalek.dalek in
    let aPeople = new People.people ("Human") in
    let theDoctor = new Doctor.doctor "Doc" 42 aPeople in

    (*INFO*)
    print_endline "___INFO___";
    print_endline theDoctor#to_string;
    print_endline aDalek#to_string;
    print_endline aPeople#to_string;

    (*TALK TIME*)
    print_endline "___TALK TIME___";
    aPeople#talk;
    theDoctor#talk;
    aDalek#talk;

    (*ATTACK*)
    print_endline "___ATTACK___";
    print_endline "Dalek attack the doctor";
    theDoctor#set_hp 50;
    print_endline theDoctor#to_string;

    print_endline "Dalek attack the human";
    aDalek#exterminate (theDoctor#get_sidekick);
    print_endline aDalek#to_string;
    print_endline (theDoctor#get_sidekick)#to_string;

    theDoctor#use_sonic_screwdriver;
    aDalek#set_hp (0);
    print_endline aDalek#to_string;

    theDoctor#travel_in_time 21 42;
    print_endline theDoctor#to_string

