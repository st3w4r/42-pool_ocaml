let print_section n1 n2 n3 str =
	print_int n1;
	print_int n2;
	print_int n3;
	print_string str

let ft_print_comb () =
	let rec add_digit n1 n2 n3 =
		if n1 < n2 && n2 < n3 && n1 < 7
		then
		begin
			print_section n1 n2 n3 ", ";
			if n3 >= 9 && n2 >= 8
			then add_digit (n1 + 1) (n1 + 2) (n1 + 3)
			else
				begin
				if n3 >= 9
				then add_digit n1 (n2 + 1) (n2 + 2)
				else add_digit n1 n2 (n3 + 1)
				end
		end
		else print_section n1 n2 n3 "\n"
	in add_digit 0 1 2

let main () =
	ft_print_comb ()

let () = main ()
