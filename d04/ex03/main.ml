let main () =
	let deck1 = Deck.newDeck in
	let deck2 = Deck.newDeck in

	print_endline "[Deck String]:";
	let rec print_deck_list_string lst = match lst with
		| hd::tl -> (
				print_string hd; print_string " ";
				print_deck_list_string tl;
			)
		| [] -> print_endline ""
	in print_deck_list_string (Deck.toStringList deck1);

	print_endline "[Deck String Verbose]:";
	let rec print_deck_list_string lst = match lst with
		| hd::tl -> (
				print_string hd; print_string "\n";
				print_deck_list_string tl;
			)
		| [] -> print_endline ""
	in print_deck_list_string (Deck.toStringListVerbose deck2);

	print_endline "[Draw Deck]:";
	let rec print_deck_list_string lst = match lst with
		| hd::tl -> (
				print_string hd; print_string "\n";
				print_deck_list_string tl;
			)
		| [] -> print_endline ""
	in print_deck_list_string (Deck.drawCard deck1)

let () = main ()
