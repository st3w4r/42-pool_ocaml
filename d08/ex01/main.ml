(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 11:39:19 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 15:21:50 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let tnt = new Trinitrotoluene.trinitrotoluene in
    print_endline tnt#formula;
    print_endline tnt#to_string


