let count_char_in_str str c = 
    let rec count_char strlen current_index acc =
        if current_index >= strlen
        then
            acc
        else if (String.get str current_index) = c 
        then
            count_char strlen (current_index + 1) (acc + 1)
        else
            count_char strlen (current_index + 1) acc 
    in  
    count_char (String.length str) 0 0 

let check_str_is_number str =
    let rec check_str strlen current_index =
        if current_index >= strlen
        then
            true
        else if (String.get str current_index) < '0' || (String.get str current_index) > '9' 
        then
            false
        else
            check_str strlen (current_index + 1)
    in  
    check_str (String.length str) 0

let check_both_digits entry =
    let space_index = String.index entry ' ' in
    let first_part = String.sub entry 0 space_index in
    let second_part = String.sub entry (space_index + 1) ((String.length entry) - (space_index + 1)) in
    (check_str_is_number first_part) && (int_of_string first_part < 9) && (check_str_is_number second_part) && (int_of_string second_part < 9)

let print_error message current_player =
    let player_message = (Display.string_of_player current_player) ^ "'s turn." in
        Display.display_instructions (message ^ player_message);
        false

let check_entry entry board current_player =
    if (count_char_in_str entry ' ') <> 1
    then
        begin
(*        Display.clear_win ();
        Display.display_board Board.board 0;*)
        print_error "Incorrect format. " current_player
        end
    else if not (check_both_digits entry)
    then
        begin
(*        Display.clear_win ();
        Display.display_board Board.board 0;*)
        print_error "Incorrect format. " current_player
        end
(*    else if not (Board.tile_is_avaible board entry)
    then
        print_error "Illegal move. " current_player*)
    else 
        begin
            true
        end

(*let display_all acc current_player =
    if acc = 0
        then    Display.clear_win ();
                Display.display_board Board.board 0;
                Display.display_instructions (Display.string_of_player current_player ^ "'s turn:")
*)

let convert_string_to_int_int entry = 
    let space_index = String.index entry ' ' in
    let first_part = String.sub entry 0 space_index in
    let second_part = String.sub entry (space_index + 1) ((String.length entry) - (space_index + 1)) in
    print_endline first_part;
    print_endline second_part;
	(int_of_string first_part, int_of_string second_part)


(* TODO : faire gagner le denier joueur a poser une tile *)
let rec main_loop board players_names current_player last_player= match board with
| Board.Grid(_, p, _) when p <> Board.noPlayer    -> Display.display_board board 0;
                                                    Display.display_instructions  (Display.string_of_player p ^ " wins by talent!")
| Board.Grid(_, p, t) when Board.check_tile_available [board] = false        -> Display.display_board board 0;
                                                    Display.display_instructions  (Display.string_of_player last_player ^ " wins by chance!")
| Board.Grid(_, _, t)                            -> let rec get_new_owned () =
                                                    let player_entry =
                                                        Display.display_board Board.board 0;
                                                        (*Display.display_instructions (Display.string_of_player current_player ^ "'s turn:");*)
                                                        Display.get_input "" 0 in
                                                    let trimed_entry = String.trim player_entry in
                                                    if not (check_entry trimed_entry board current_player)
                                                    then
	                            					    begin
                                                            get_new_owned ()
                                                    end
                                                    else
						                                begin
                                                            trimed_entry
						                                end
                                                in
                                                let move = convert_string_to_int_int (get_new_owned ()) in
                                                let new_board = Board.set_move board current_player move in
                                                (*let updated_board = Board.update_winners new_board in *)
                                                main_loop new_board players_names last_player current_player

let main () =
    Display.create_win ();
    main_loop Board.board ["X"; "O"] Board.playerO Board.playerX;
    ignore(Display.get_input "" 0);
    Display.close_win ()

let () = main ()


