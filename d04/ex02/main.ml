(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/17 18:40:51 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/18 00:00:38 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let card = (Card.newCard Card.Value.Jack Card.Color.Heart) in
    let card2 = (Card.newCard Card.Value.Jack Card.Color.Spade) in
    let card3 = (Card.newCard Card.Value.T5 Card.Color.Spade) in
    let card4 = (Card.newCard Card.Value.As Card.Color.Diamond) in

    print_string (Card.toString card); print_endline "";
    print_string (Card.toStringVerbose card); print_endline "";
    print_int (Card.compare card3 card); print_endline "";
    print_string (Card.toStringVerbose (Card.min card3 card)); print_endline "" ;
    print_string (Card.toStringVerbose (Card.max card3 card)); print_endline "";
    print_string (
        if (Card.isOf card Card.Color.Heart) = true
        then Printf.sprintf "isOf %s %s" (Card.toStringVerbose card) "Color Heart true"
        else Printf.sprintf "isOf %s %s" (Card.toStringVerbose card) "Color Heart false"
    ); print_endline "";
    print_string (
        if (Card.isOf card2 Card.Color.Heart) = true
        then Printf.sprintf "isOf %s %s" (Card.toStringVerbose card2) "Color Heart true"
        else Printf.sprintf "isOf %s %s" (Card.toStringVerbose card2) "Color Heart false"
    ); print_endline "";
     print_string (
        if (Card.isSpade card) = true
        then Printf.sprintf "isSpade %s %s" (Card.toStringVerbose card) "Color Spade true"
        else Printf.sprintf "isSpade %s %s" (Card.toStringVerbose card) "Color Spade false"
    ); print_endline "";
    print_string (
        if (Card.isHeart card) = true
        then Printf.sprintf "isHeart %s %s" (Card.toStringVerbose card) "Color Heart true"
        else Printf.sprintf "isHeart %s %s" (Card.toStringVerbose card) "Color Heart false"
    ); print_endline "";
    print_string (
        if (Card.isDiamond card) = true
        then Printf.sprintf "isDiamond %s %s" (Card.toStringVerbose card) "Color Diamond true"
        else Printf.sprintf "isDiamond %s %s" (Card.toStringVerbose card) "Color Diamond false"
    ); print_endline "";
    print_string (
        if (Card.isClub card) = true
        then Printf.sprintf "isClub %s %s" (Card.toStringVerbose card) "Color Club true"
        else Printf.sprintf "isClub %s %s" (Card.toStringVerbose card) "Color Club false"
    ); print_endline "";
    print_string (Card.toStringVerbose (Card.best [card; card2; card4; card3])); print_endline "";
    print_string (Card.toStringVerbose (Card.best [])); print_endline ""


let () = main ()
