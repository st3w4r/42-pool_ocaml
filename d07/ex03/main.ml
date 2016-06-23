(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/23 20:02:14 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/23 23:32:15 by ybarbier         ###   ########.fr       *)
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

    let aPe1 = (aPe#add pe1) in
    display aPe1#get_lst;
    let aPe2 = aPe1#add pe2 in
    display aPe2#get_lst;
    let aPe3 = aPe2#add pe3 in
    display aPe3#get_lst;
    let aPe4 = aPe3#delete in
    display aPe4#get_lst;
    let aPe5 = aPe4#delete in
    display aPe5#get_lst;
    let aPe6 = aPe5#delete in
    display aPe6#get_lst;

    (*Doctor*)
    let do1 = (new Doctor.doctor "TheDoc" 42 pe1) in
    let do2 = (new Doctor.doctor "TheBigDoc" 43 pe2) in
    let do3 = (new Doctor.doctor "TheMonsterDoc" 44 pe3) in
    let aDo = new Army.army in

    let aDo1 = (aDo#add do1) in
    display aDo1#get_lst;
    let aDo2 = aDo1#add do2 in
    display aDo2#get_lst;
    let aDo3 = aDo2#add do3 in
    display aDo3#get_lst;
    let aDo4 = aDo3#delete in
    display aDo4#get_lst;
    let aDo5 = aDo4#delete in
    display aDo5#get_lst;
    let aDo6 = aDo5#delete in
    display aDo6#get_lst;

    (*Dalek*)
    let da1 = (new Dalek.dalek) in
    let da2 = (new Dalek.dalek) in
    let da3 = (new Dalek.dalek) in
    let aDa = new Army.army in

    let aDa1 = (aDa#add da1) in
    display aDa1#get_lst;
    let aDa2 = aDa1#add da2 in
    display aDa2#get_lst;
    let aDa3 = aDa2#add da3 in
    display aDa3#get_lst;
    let aDa4 = aDa3#delete in
    display aDa4#get_lst;
    let aDa5 = aDa4#delete in
    display aDa5#get_lst;
    let aDa6 = aDa5#delete in
    display aDa6#get_lst;

