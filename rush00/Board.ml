type level = Level of int

type player = Player of string

type board =
    | Grid of level * player * (board list)

let tiles_level = Level 0
let first_level = Level 1
let second_level = Level 2

let playerX = Player("X")
let playerO = Player("O")
let noPlayer = Player("")

let tile1 = Grid(tiles_level, noPlayer, [])
let tile2 = Grid(tiles_level, noPlayer, [])
let tile3 = Grid(tiles_level, noPlayer, [])
let tile4 = Grid(tiles_level, noPlayer, [])
let tile5 = Grid(tiles_level, noPlayer, [])
let tile6 = Grid(tiles_level, noPlayer, [])
let tile7 = Grid(tiles_level, noPlayer, [])
let tile8 = Grid(tiles_level, noPlayer, [])
let tile9 = Grid(tiles_level, noPlayer, []) 
let tile1_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile2_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile3_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile4_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile5_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile6_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile7_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile8_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile9_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let board = Grid (second_level, noPlayer, [tile1_board; tile2_board; tile3_board; tile4_board; tile5_board; tile6_board; tile7_board; tile8_board; tile9_board])





(*
let is_full board = false
let set_move board current_player move = board
let update_winners board = board
*)
let get_board_x_y board x y = match board with
| Grid(l, _, _) when l = tiles_level	-> board
| Grid(_, _, t)							-> List.nth t ( 3 * y + x )




(*Return the winner player or the noPlayer*)
let rec check_winner_board board = match board with
    | Grid(_, _, _) -> (
        let pos00 = get_board_winner (get_board_x_y board 0 0) in
        let pos10 = get_board_winner (get_board_x_y board 1 0) in
        let pos20 = get_board_winner (get_board_x_y board 2 0) in
        let pos01 = get_board_winner (get_board_x_y board 0 1) in
        let pos11 = get_board_winner (get_board_x_y board 1 1) in
        let pos21 = get_board_winner (get_board_x_y board 2 1) in
        let pos02 = get_board_winner (get_board_x_y board 0 2) in
        let pos12 = get_board_winner (get_board_x_y board 1 2) in
        let pos22 = get_board_winner (get_board_x_y board 2 2) in
        (*Check Horizontal*)
        if (pos00 = pos10) && (pos10 = pos20) then pos00
        else if (pos01 = pos11) && (pos11 = pos21) then pos01
        else if (pos02 = pos12) && (pos12 = pos22) then pos02
        (*Check Vertical*)
        else if (pos00 = pos01) && (pos01 = pos02) then pos00
        else if (pos10 = pos11) && (pos11 = pos12) then pos10
        else if (pos20 = pos21) && (pos21 = pos22) then pos20
        (*Check Diagonal*)
        else if (pos00 = pos11) && (pos11 = pos22) then pos00
        else if (pos20 = pos11) && (pos11 = pos02) then pos20
        else noPlayer
    )
and
get_board_winner board = match board with
| Grid (_, p, _) -> p
(*
| Grid (l, p, _) when l = tiles_level		-> p
| Grid (_, p, _) when p <> noPlayer			-> p
*)

(*
| Grid (_, _, t)							-> 
							begin
								match t with
								| [] -> noPlayer
								| hd:tl -> check_winner_board hd; get_board_winner tl
							end
*)

let set_board_winner board new_winner = match board with
	| Grid (l, _, t)	-> Grid (l, new_winner, t)


(*let check_board_capture board = match board with
|*)

(*let string_of_player p = match p with
| x when x = playerX	-> " X "
| x when x = playerO	-> " O "
| _						-> " - "
*)



(*Return true if tile is available*)
let rec check_tile_available board = match board with
    | Grid(_, p, _)::tl when (p = noPlayer) -> true
    | Grid(_, p, _)::tl when (p <> noPlayer) -> check_tile_available tl
    | [] -> false

(*Return true if board is no full*)
(*
let rec check_board_available board list = match board with
    | Grid(l, p, _) when (l = tile_level && p = noPlayer) -> true
    | Grid(l, p, _) when (l = tile_level && p <> noPlayer) -> false
    | Grid(l, _, t) when l = first_level -> check_tile_available t*)

(*Set move*)
(* board list
 * current_player
 * move = (x, y)
 * *)
let set_move board_main current_player move =
    let (x, y) = move in
    let board = get_board_x_y board_main (x / 3) (y / 3) in
    let Grid(l, p, t) = board in
    let rec set_move_board board_lst current_player move acc = match board_lst with
    | hd::tl -> (
        let (x, y) = move in
        let stop_index = (x mod 3) + 3 * (y mod 3) in
        if List.length acc = stop_index
        then
            set_move_board tl current_player move (List.append (set_board_winner hd current_player) acc)
        else
            set_move_board tl current_player move (List.append hd acc)
    )
    | [] -> acc
    in Grid(l, p, (set_move_board t current_player move []))

(*Update board*)

let update_winners board =
	let Grid(l, p, t) = board in
    let rec update_winners_board t acc = match board with
        | hd::tl -> (
            let (l, p, t) = hd in
            let player = (check_winner_board hd) in
            let newBoard = Grid(l, player, t) in
            update_winner_board tl (List.append newBoard acc)
        )
        | [] -> acc
    in update_winners t;



(*let () = 
	let new_board = get_board_x_y tile1_board 1 1 in
	let board_winner = get_board_winner new_board in
	let winner_str = string_of_player board_winner in
	print_string winner_str
*)

(*check:
    * - - -
    * - - -
    * - - -
    *
    * Horizontal:
    * 1 2 3  0:0 1:0 2:0
    * 4 5 6  0:1 1:1 2:1
    * 7 8 9  0:2 1:2 2:2
    *
    * Vertical
    * 1 4 7  0:0 0:1 0:2
    * 2 5 8  1:0 1:1 1:2
    * 3 6 9  2:0 2:1 2:2
    *
    * Diagonal
    * 1 5 9  0:0 1:1 2:2
    * 3 5 7  2:0 1:1 0:2
*)
