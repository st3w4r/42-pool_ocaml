(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Board.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/18 20:31:22 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/18 20:36:32 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type level = Level of int

type player = Player of string

type board =
    | Owner of player
    | Grid of level * player * (board list)

let tiles_level = Level 0
let first_level = Level 1
let second_level = Level 2

let playerX = Player("X")
let playerO = Player("O")
let noPlayer = Player("")

let tile1 = Owner(playerX)
let tile2 = Owner(noPlayer)
let tile3 = Owner(noPlayer)
let tile4 = Owner(playerX)
let tile5 = Owner(playerO)
let tile6 = Owner(noPlayer)
let tile7 = Owner(playerX)
let tile8 = Owner(playerO)
let tile9 = Owner(playerO)

let tile1_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile2_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile3_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile4_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile5_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile6_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile7_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile8_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile9_board =  Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let board = Grid (first_level, noPlayer, [tile1_board; tile2_board; tile3_board; tile4_board; tile5_board; tile6_board; tile7_board; tile8_board; tile9_board])



