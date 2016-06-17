(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/17 18:40:51 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/17 21:05:58 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let card = (Card.newCard Card.Value.Jack Card.Color.Heart) in
    print_string (Card.toString card); print_endline "";
    print_string (Card.toStringVerbose card); print_endline ""



let () = main ()
