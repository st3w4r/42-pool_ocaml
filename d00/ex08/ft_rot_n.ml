let ft_rot_n n str =
    let rot c =
        let ascii_of_a = int_of_char 'a' in
        let ascii_of_z = int_of_char 'z' in
        let ascii_of_A = int_of_char 'A' in
        let ascii_of_Z = int_of_char 'Z' in
        let rec add_to_char c =
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
            then
                char_of_int(int_of_char(c) + (n mod 26))
            else c
        in add_to_char c
    in String.map rot str

(*let rot c = char_of_int (int_of_char (c) + (n mod 26))*)


let main () =
    print_endline (ft_rot_n 3 "Aello{")

let () = main ()
