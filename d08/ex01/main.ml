(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 11:39:19 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 17:47:00 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let tnt = new Trinitrotoluene.trinitrotoluene in
    let tnt2 = new Trinitrotoluene.trinitrotoluene in
    print_endline tnt#name;
    print_endline tnt#formula;
    print_string tnt#to_string;
    print_string "Equals: ";
    if (tnt#equals tnt2) then print_endline "True" else print_endline "False";


    let h2o = new Water.water in
    let h2o2 = new Water.water in
    print_endline h2o#name;
    print_endline h2o#formula;
    print_string h2o#to_string;
    print_string "Equals: ";
    if (h2o#equals h2o2) then print_endline "True" else print_endline "False";

    let co2 = new Carbon_dioxyde.carbon_dioxyde in
    let co22 = new Carbon_dioxyde.carbon_dioxyde in
    print_endline co2#name;
    print_endline co2#formula;
    print_string co2#to_string;
    print_string "Equals: ";
    if (co2#equals co22) then print_endline "True" else print_endline "False";

    if (co2#equals h2o) then print_endline "True" else print_endline "False";
    if (tnt#equals co2) then print_endline "True" else print_endline "False";
    if (h2o#equals tnt) then print_endline "True" else print_endline "False";





