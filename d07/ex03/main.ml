(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/23 20:02:14 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/23 20:09:36 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec display lst = match lst with
    | hd::tl ->
            begin
                print_int hd; print_string " ";
                display tl
            end
    | [] -> print_endline ""

let () =
    let a = new Army.army [42] in
    display a#get_lst;
    a#add 21;
    display a#get_lst;
    a#add 53;
    display a#get_lst;
    a#add 77;
    display a#get_lst;
    a#delete;
    display a#get_lst;
    a#delete;
    display a#get_lst;
    a#delete;
    display a#get_lst;
