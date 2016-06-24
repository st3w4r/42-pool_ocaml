(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 11:39:19 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 12:25:25 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let h = new Hydrogen.hydrogen in
    let h2 = new Hydrogen.hydrogen in

    print_string h#name; print_string " ";
    print_string h#symbole; print_string " ";
    print_int h#atomic_number; print_string "\n";
    print_endline h2#to_string;
    print_string "Equals: ";
    if (h#equals h2) then print_endline "True" else print_endline "False";

    let c = new Carbon.carbon in
    let c2 = new Carbon.carbon in

    print_string c#name; print_string " ";
    print_string c2#symbole; print_string " ";
    print_int c#atomic_number; print_string "\n";
    print_endline c2#to_string;
    print_string "Equals: ";
    if (c#equals c2) then print_endline "True" else print_endline "False";

    let o = new Oxygen.oxygen in
    let o2 = new Oxygen.oxygen in

    print_string o#name; print_string " ";
    print_string o2#symbole; print_string " ";
    print_int o#atomic_number; print_string "\n";
    print_endline o2#to_string;
    print_string "Equals: ";
    if (o#equals o2) then print_endline "True" else print_endline "False";
    let al = new Aluminium.aluminium in
    let al2 = new Aluminium.aluminium in

    print_string al#name; print_string " ";
    print_string al2#symbole; print_string " ";
    print_int al#atomic_number; print_string "\n";
    print_endline al2#to_string;
    print_string "Equals: ";
    if (al#equals al2) then print_endline "True" else print_endline "False";

    let p = new Phosphorus.phosphorus in
    let p2 = new Phosphorus.phosphorus in

    print_string p#name; print_string " ";
    print_string p2#symbole; print_string " ";
    print_int p#atomic_number; print_string "\n";
    print_endline p2#to_string;
    print_string "Equals: ";
    if (p#equals p2) then print_endline "True" else print_endline "False";

    let si = new Silicon.silicon in
    let si2 = new Silicon.silicon in

    print_string si#name; print_string " ";
    print_string si2#symbole; print_string " ";
    print_int si#atomic_number; print_string "\n";
    print_endline si2#to_string;
    print_string "Equals: ";
    if (si#equals si2) then print_endline "True" else print_endline "False";

    let fe = new Iron.iron in
    let fe2 = new Iron.iron in

    print_string fe#name; print_string " ";
    print_string fe2#symbole; print_string " ";
    print_int fe#atomic_number; print_string "\n";
    print_endline fe2#to_string;
    print_string "Equals: ";
    if (fe#equals fe2) then print_endline "True" else print_endline "False";

    if (al#equals si) then print_endline "True" else print_endline "False";
    if (c#equals si) then print_endline "True" else print_endline "False";
    if (p#equals h) then print_endline "True" else print_endline "False";
