(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 11:39:19 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 20:04:28 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let a = new Alkane.alkane 5 in
    print_endline a#name;
    print_endline a#formula;
    print_endline a#to_string;

    let m = new Methane.methane in
    print_endline m#name;
    print_endline m#formula;
    print_endline m#to_string;

    let e = new Ethane.ethane in
    print_endline e#name;
    print_endline e#formula;
    print_endline e#to_string;

    let o = new Octane.octane in
    print_endline o#name;
    print_endline o#formula;
    print_endline o#to_string;

(*
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

    let hcn = new Hydrogen_cyanide.hydrogen_cyanide in
    let hcn2 = new Hydrogen_cyanide.hydrogen_cyanide in
    print_endline hcn#name;
    print_endline hcn#formula;
    print_string hcn#to_string;
    print_string "Equals: ";
    if (hcn#equals hcn2) then print_endline "True" else print_endline "False";


    let c2h4 = new Ethylene.ethylene in
    let c2h42 = new Ethylene.ethylene in
    print_endline c2h4#name;
    print_endline c2h4#formula;
    print_string c2h4#to_string;
    print_string "Equals: ";
    if (c2h4#equals c2h42) then print_endline "True" else print_endline "False";


    let ch4 = new Methane.methane in
    let ch42 = new Methane.methane in
    print_endline ch4#name;
    print_endline ch4#formula;
    print_string ch4#to_string;
    print_string "Equals: ";
    if (ch4#equals ch42) then print_endline "True" else print_endline "False";


    if (co2#equals h2o) then print_endline "True" else print_endline "False";
    if (tnt#equals co2) then print_endline "True" else print_endline "False";
    if (h2o#equals tnt) then print_endline "True" else print_endline "False";
*)




