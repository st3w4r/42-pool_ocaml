let ft_rot_n n str =
    let rot c =
        if (c >= 'a' && c <= 'z')
		then char_of_int(((((int_of_char c) - int_of_char 'a') + n) mod 26) + int_of_char 'a')
		else
			if (c >= 'A' && c <= 'Z')
			then char_of_int(((((int_of_char c) - int_of_char 'A') + n) mod 26) + int_of_char 'A')
        else c
    in String.map rot str


let main () =
    print_endline (ft_rot_n 3 "AellWXxyz{");
    print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
    print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
    print_endline (ft_rot_n 42 "0123456789");
    print_endline (ft_rot_n 2 "OI2EAS67B9");
    print_endline (ft_rot_n 0 "Damned !");
    print_endline (ft_rot_n 42 "");
    print_endline (ft_rot_n 1 "NBzlk qnbjr !")

let () = main ()
