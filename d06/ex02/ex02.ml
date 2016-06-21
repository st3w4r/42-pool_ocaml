(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex02.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/21 18:22:13 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/21 19:58:15 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module type PAIR = sig val pair : (int * int) end
module type VAL = sig val x : int end
(* FIX ME !!! *)
module type MAKEPROJECTION =
    functor (Pair : PAIR) -> VAL

module MakeFst : MAKEPROJECTION =
    functor (Pair : PAIR) ->
        struct
            let (a, b) = Pair.pair
            let x = a
        end

module MakeSnd : MAKEPROJECTION =
    functor (Pair : PAIR) ->
        struct
            let (a, b) = Pair.pair
            let x = b
        end
(*END FIX*)
module Pair : PAIR = struct let pair = ( 21, 42 ) end
module Fst : VAL = MakeFst (Pair)
module Snd : VAL = MakeSnd (Pair)
let () = Printf.printf "Fst.x = %d, Snd.x = %d\n" Fst.x Snd.x
