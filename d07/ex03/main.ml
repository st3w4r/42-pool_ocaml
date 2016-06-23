(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/23 20:02:14 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/23 23:06:28 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec display lst = match lst with
    | hd::tl ->
            begin
                print_string hd#to_string; print_string " ; ";
                display tl
            end
    | [] -> print_endline ""

let () =
    (*People*)
    let pe1 = (new People.people "Yana") in
    let pe2 = (new People.people "Jack") in
    let pe3 = (new People.people "Sam") in
    let aPe = new Army.army in

    aPe#add pe1;
    display aPe#get_lst;
    aPe#add pe2;
    display aPe#get_lst;
    aPe#add pe3;
    display aPe#get_lst;
    aPe#delete;
    display aPe#get_lst;
    aPe#delete;
    display aPe#get_lst;
    aPe#delete;
    display aPe#get_lst;

    (*Doctor*)
    let do1 = (new Doctor.doctor "TheDoc" 42 pe1) in
    let do2 = (new Doctor.doctor "TheBigDoc" 43 pe2) in
    let do3 = (new Doctor.doctor "TheMonsterDoc" 44 pe3) in
    let aDo = new Army.army in

    aDo#add do1;
    display aDo#get_lst;
    aDo#add do2;
    display aDo#get_lst;
    aDo#add do3;
    display aDo#get_lst;
    aDo#delete;
    display aDo#get_lst;
    aDo#delete;
    display aDo#get_lst;
    aDo#delete;
    display aDo#get_lst;

    (*Dalek*)
    let da1 = (new Dalek.dalek) in
    let da2 = (new Dalek.dalek) in
    let da3 = (new Dalek.dalek) in
    let aDa = new Army.army in

    aDa#add da1;
    display aDa#get_lst;
    aDa#add da2;
    display aDa#get_lst;
    aDa#add da3;
    display aDa#get_lst;
    aDa#delete;
    display aDa#get_lst;
    aDa#delete;
    display aDa#get_lst;
    aDa#delete;
    display aDa#get_lst
