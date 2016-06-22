(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 14:09:17 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/22 19:40:30 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let man = new People.people ("Mark") in
    let the_doctor = new Doctor.doctor "Doc" 42 man in
    print_endline the_doctor#to_string;
    the_doctor#talk;
    the_doctor#travel_in_time 20 5;
    the_doctor#use_sonic_screwdriver;
    print_endline the_doctor#to_string;
(*    the_doctor#call_regenerate; *)
    print_endline ""
