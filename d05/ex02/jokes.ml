(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/20 22:38:09 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/20 23:33:20 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let arr = Array.make 5 "" 

let bad_jokes =
    Array.set arr 0 "My life is on 32 bits, my birthday is 1 january 1970 who I am?";
    Array.set arr 1 "Qu'est-ce qu'il y a entre toi et moi ? Et";
    Array.set arr 2 "Qu'est ce qu'une gousse d'ail jeté contre un mur ? Le retour du jet d'ail";
    Array.set arr 3 "Pourquoi Sony ouvre la porte ? Parce que Eric sonne";
    Array.set arr 4 "Comment s'apelle la mère du phoque ? Mother Phoque"

let main () =
    Random.self_init ();
    Printf.printf "%s\n" (Array.get arr (Random.int 5))

let () = main ()

