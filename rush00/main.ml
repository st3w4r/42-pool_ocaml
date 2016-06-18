(*
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
*)
let coord_X_base =  0
let coord_X_second_col = coord_X_base + 20
let coord_X_third_col = coord_X_base + 40

let coord_Y_base = 200
let coord_Y_second_line =  coord_Y_base - 20
let coord_Y_third_line =  coord_Y_base - 40

(*
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
*)

(*let board = Grid (tiles_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])*)

let print_player head = 
	match head with
	| Owner(p) when p = noPlayer -> Graphics.draw_string " _ "
	| Owner(p) when p = playerX -> Graphics.draw_string " X "
	| Owner(p) when p = playerO -> Graphics.draw_string " O "
	| _ -> Graphics.draw_string " ep"

let rec display_tiles tiles nbr =
	match tiles with
	|  [] -> print_newline ()
	| head::body -> 
		begin
			match nbr with 
			| 0 -> 
					begin
						Graphics.moveto coord_X_base coord_Y_base;
						print_player head;
						display_tiles body (nbr + 1)
					end
			| 1 ->
				begin
						Graphics.moveto coord_X_second_col coord_Y_base;
						print_player head;
						display_tiles body (nbr + 1)
				end
			| 2 ->
				begin
						Graphics.moveto coord_X_third_col coord_Y_base;
						print_player head;
						Graphics.draw_string " | ";
						display_tiles body (nbr + 1)
				end
			| 3 ->
				begin
						Graphics.moveto coord_X_base coord_Y_second_line;
						print_player head;
						display_tiles body (nbr + 1)
				end
			| 4 ->
				begin
						Graphics.moveto coord_X_second_col coord_Y_second_line;
						print_player head;
						display_tiles body (nbr + 1)
				end
			| 5 ->
				begin
						Graphics.moveto coord_X_third_col coord_Y_second_line;
						print_player head;
						Graphics.draw_string " | ";
						display_tiles body (nbr + 1)
				end
			| 6 ->
				begin
						Graphics.moveto coord_X_base coord_Y_third_line;
						print_player head;
						display_tiles body (nbr + 1)
				end
			| 7 ->
				begin
						Graphics.moveto coord_X_second_col coord_Y_third_line;
						print_player head;
						display_tiles body (nbr + 1)
				end
			| 8 ->
				begin
						Graphics.moveto coord_X_third_col coord_Y_third_line;
						print_player head;
						Graphics.draw_string " | ";
						display_tiles body (nbr + 1)
				end
			| _ -> print_newline ()
		end

let display_winner p =
	match p with
	| p when p = playerX ->
			begin
				Graphics.moveto coord_X_base coord_Y_base;
				Graphics.draw_string " \     /  | ";
				Graphics.moveto coord_X_base coord_Y_second_line;
				Graphics.draw_string "    X     | ";
				Graphics.moveto coord_X_base coord_Y_third_line;
				Graphics.draw_string " /     \  | "
			end
	| p when p = playerO -> 
			begin
				Graphics.moveto coord_X_base coord_Y_base;
				Graphics.draw_string " /-----\  | ";
				Graphics.moveto coord_X_base coord_Y_second_line;
				Graphics.draw_string " |  O   | | ";
				Graphics.moveto coord_X_base coord_Y_third_line;
				Graphics.draw_string " \\-----/  | ";
			end
	| _ -> 
			begin
				Graphics.moveto coord_X_base coord_Y_base;
				Graphics.draw_string " /-----\  | ";
				Graphics.moveto coord_X_base coord_Y_second_line;
				Graphics.draw_string "   error  | ";
				Graphics.moveto coord_X_base coord_Y_third_line;
				Graphics.draw_string " \\-----/  | ";
			end

let string_of_player p = 
	match p with
	| p when p = noPlayer -> ""
	| p when p = playerX -> "X"
	| p when p = playerO -> "O"
	| p -> "E"

let rec display_board b =
	match b with
	| Grid (l, p, t) when l = Board.tiles_level && p = noPlayer -> display_tiles t 0
	| Grid (l, p, t) when l = Board.tiles_level && p <> noPlayer -> display_winner p
	| Grid (l, p, t) when l = first_level -> 
			begin
				match t with
				| [] -> ()
				| head::body ->
				begin
				match head with
					| Owner(p_bis) -> display_winner p_bis ; display_list body;
					| x -> display_board x 
				end
			end
	| Grid (l, p, t) when l = second_level && p = noPlayer ->
			begin
				match t with
				| [] -> ()
				| head::body ->
				begin
				match head with
					| Owner(p_bis) -> display_winner p_bis ; display_list body;
					| x -> display_board x 
				end
			end
	| Grid (l, p, t) when l = second_level && p <> noPlayer ->
		begin
			Graphics.moveto 0 0;
			Graphics.draw_string ((string_of_player p) ^ "wins the game !")
		end
	| Owner (p) -> display_winner p
	| Grid (_, _, _) -> ()
and 
display_list l =
	match l with
	| [] -> ()
	| head::body ->
		begin
			match head with
			| Owner(p_bis) -> display_winner p_bis ; display_list body;
			| x -> display_board x
		end

let create_win width height =
	Graphics.open_graph (" " ^ ((string_of_int width) ^  "x" ^ (string_of_int height)))

let () =
	create_win ((100+1) * 3) ((100 + 1) * 3);
	display_board board;
	ignore(Graphics.read_key ());;
	Graphics.close_graph ()
