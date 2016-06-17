(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/17 18:40:51 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/17 21:26:37 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let card = (Card.newCard Card.Value.Jack Card.Color.Heart) in
    let card2 = (Card.newCard Card.Value.Jack Card.Color.Spade) in
    let card3 = (Card.newCard Card.Value.T5 Card.Color.Spade) in

    print_string (Card.toString card); print_endline "";
    print_string (Card.toStringVerbose card); print_endline "";
    print_int (Card.compare card3 card); print_endline "";
    print_string (Card.toStringVerbose (Card.min card3 card)); print_endline "" ;
    print_string (Card.toStringVerbose (Card.max card3 card)); print_endline "" 



let () = main ()
