(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 11:39:19 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 20:15:12 by ybarbier         ###   ########.fr       *)
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

    if (o#equals o) then print_endline "True" else print_endline "False";
    if (m#equals e) then print_endline "True" else print_endline "False";
    if (o#equals e) then print_endline "True" else print_endline "False";




