(*type level = Level of int

type player = Player of string

type board =
    | Grid of level * player * (board list)

let tiles_level = Level 0
let first_level = Level 1
let second_level = Level 2

let playerX = Player("X")
let playerO = Player("O")
let noPlayer = Player("")

let tile1 = Grid(tiles_level, playerX, [])
let tile2 = Grid(tiles_level, noPlayer, [])
let tile3 = Grid(tiles_level, noPlayer, [])
let tile4 = Grid(tiles_level, playerX, [])
let tile5 = Grid(tiles_level, playerO, [])
let tile6 = Grid(tiles_level, noPlayer, [])
let tile7 = Grid(tiles_level, playerX, [])
let tile8 = Grid(tiles_level, playerO, [])
let tile9 = Grid(tiles_level, playerO, []) 
let tile1_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile2_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile3_board = Grid (first_level, playerX, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile4_board = Grid (first_level, playerO, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile5_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile6_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile7_board = Grid (first_level, playerX, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile8_board = Grid (first_level, noPlayer, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile9_board = Grid (first_level, playerO, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let board = Grid (second_level, noPlayer, [tile1_board; tile2_board; tile3_board; tile4_board; tile5_board; tile6_board; tile7_board; tile8_board; tile9_board])
*)
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

let width = 300
let height = 300
let coord_X_base =  0
let coord_X_second_col = coord_X_base + 20
let coord_X_third_col = coord_X_base + 40

let coord_Y_base = 320
let coord_Y_second_line =  coord_Y_base - 20
let coord_Y_third_line =  coord_Y_base - 40
(*
let tile1_board =  Grid (tiles_level, playerO, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
let tile2_board =  Grid (tiles_level, playerX, [tile1; tile2; tile3; tile4; tile5; tile6; tile7; tile8; tile9])
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

let getCoordX nbr = 
	match nbr with
	| 0 -> 0
	| 1 -> width / 3
	| 2 -> (width / 3) * 2
	| 3 -> 0
	| 4 -> width / 3
	| 5 -> (width / 3) * 2
	| 6 -> 0 
	| 7 -> width / 3
	| 8 -> (width / 3) * 2
	| _ -> 0

let getCoordY nbr = 
	match nbr with
	| 0 -> 0
	| 1 -> 0
	| 2 -> 0
	| 3 -> height / 3
	| 4 -> height / 3
	| 5 -> height / 3
	| 6 -> (height / 3) * 2 
	| 7 -> (height / 3) * 2
	| 8 -> (height / 3) * 2
	| _ -> 0

let getCoordLineY nbr = 
	match nbr with
	| x when x = 0 || x =1 || x =2 -> 0
	| x when x = 3 || x =4 || x =5 -> height / 3
	| _ -> 0

let getCoordLineX nbr = 
	match nbr with
	| x when x = 0 || x =1 || x =2-> (width / 3) -20
	| _ -> ((width / 3) * 2) -20

let get_player head =
	match head with
	| Board.Grid(l, p, t) -> p


let print_player head = 
	match head with
	| p when p = Board.noPlayer -> Graphics.draw_string " _ "
	| p when p = Board.playerX -> Graphics.draw_string " X "
	| p when p = Board.playerO -> Graphics.draw_string " O "
	| _ -> Graphics.draw_string " ep"

let rec display_tiles tiles nbr acc =
	match tiles with
	| [] -> ()
	| head::body -> 
		begin
			match nbr with 
			| 0 -> 
					begin
						Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_base - getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
					end
			| 1 ->
				begin
						Graphics.moveto (coord_X_second_col + getCoordX acc) (coord_Y_base - getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
				end
			| 2 ->
				begin
						Graphics.moveto (coord_X_third_col+ getCoordX acc) (coord_Y_base- getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
				end
			| 3 ->
				begin
						Graphics.moveto (coord_X_base+ getCoordX acc) (coord_Y_second_line- getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
				end
			| 4 ->
				begin
						Graphics.moveto (coord_X_second_col+ getCoordX acc) (coord_Y_second_line- getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
				end
			| 5 ->
				begin
						Graphics.moveto (coord_X_third_col+ getCoordX acc) (coord_Y_second_line- getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
				end
			| 6 ->
				begin
						Graphics.moveto (coord_X_base+ getCoordX acc) (coord_Y_third_line- getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
				end
			| 7 ->
				begin
						Graphics.moveto (coord_X_second_col+ getCoordX acc) (coord_Y_third_line- getCoordY acc);
						print_player (get_player head);
						display_tiles body (nbr + 1) acc
				end
			| 8 ->
				begin
						Graphics.moveto (coord_X_third_col+ getCoordX acc) (coord_Y_third_line- getCoordY acc);
						print_player (get_player head);
						Graphics.moveto (coord_X_base)  (coord_Y_third_line - (getCoordLineY acc)- 20);
						Graphics.lineto width  (coord_Y_third_line - (getCoordLineY acc)- 20);
						(* A reprendre *)
						Graphics.moveto (getCoordLineX acc)  (coord_Y_base + 40);
						Graphics.lineto (getCoordLineX acc)  70; 
						display_tiles body (nbr + 1) acc
				end
			| _ -> print_newline ()
		end

let display_winner p acc =
	match p with
	| p when p = Board.playerX ->
			begin
				Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_base - getCoordY acc);
				Graphics.draw_string " \\     /      ";
				Graphics.moveto (coord_X_base+ getCoordX acc) ( coord_Y_second_line - getCoordY acc);
				Graphics.draw_string "    X         ";
				Graphics.moveto (coord_X_base+ getCoordX acc) ( coord_Y_third_line - getCoordY acc);
				Graphics.draw_string " /     \\      "
			end
	| p when p = Board.playerO -> 
			begin
				Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_base - getCoordY acc);
				Graphics.draw_string " /-----\\      ";
				Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_second_line - getCoordY acc);
				Graphics.draw_string " |  O   |     ";
				Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_third_line - getCoordY acc);
				Graphics.draw_string " \\-----/      ";
			end
	| _ ->
			begin
				Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_base - getCoordY acc);
				Graphics.draw_string " /-----\\     | ";
				Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_second_line - getCoordY acc);
				Graphics.draw_string "   error     | ";
				Graphics.moveto (coord_X_base + getCoordX acc) (coord_Y_third_line - getCoordY acc);
				Graphics.draw_string " \\-----/     | ";
			end

let string_of_player p = 
	match p with
	| p when p = Board.noPlayer -> ""
	| p when p = Board.playerX -> "X"
	| p when p = Board.playerO -> "O"
	| p -> "E"

let rec display_board b acc =
	match b with
	| Board.Grid (l, p, t) when l = Board.first_level && p = Board.noPlayer -> display_tiles t 0 acc;
	| Board.Grid (l, p, t) when l = Board.first_level && p <> Board.noPlayer -> display_winner p acc;
	| Board.Grid (l, p, t) when l = Board.second_level -> 
			begin
				match t with
				| [] -> ()
				| head::body -> display_board head acc ; display_list body acc;
			end
	| Board.Grid (_, _, _) -> print_endline  "display_board last option "
and 
display_list l acc =
	match l with
	| [] -> ()
	| head::body -> display_board head (acc + 1); display_list body (acc+1)

let create_win () =
	Graphics.open_graph (" " ^ ((string_of_int (width + 1)) ^  "x" ^ (string_of_int (height + 50))))

let end_key c x =
	match c with
	| '\n' -> true
	| '\t' -> true
	| '\r' -> true
	| _ -> 
		begin
			Graphics.moveto x 40;
			Graphics.draw_char c;
			false
		end

let clear_win () = 
	Graphics.clear_graph ()


let rec get_input str x= 
	let c = Graphics.read_key () in
		if end_key c x
			then
				begin 
					clear_win () ; str
				end
		else get_input (str ^ String.make 1 c) (x + 7)

let display_instructions str = 
	Graphics.moveto 0 50;
	Graphics.draw_string str

let close_win () = 
	Graphics.close_graph ()
(*
let () =
	(*create_win (width+1) (height + 50);
	let rec loop str = 
		clear_win ();
		display_board Board.board 0;
		display_instructions str;
		let s = (get_input "" 0) in
			if s = "quit"
				then print_endline "end of the game"
			else if s = "win"
				then loop "Y's win the game !"
			else if s = "3 0"
				then loop "Y's turn to play:"
			else loop str
	in loop "X's turn to play :";
	close_win () *)*)
