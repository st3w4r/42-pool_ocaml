let ft_print_alphabet () =
    let ascii_of_a = int_of_char 'a' in
    let ascii_of_z = int_of_char 'z' in
    let rec display_letter ascii_of_current_letter =
        if ascii_of_current_letter <= ascii_of_z then
            let char_of_letter = char_of_int ascii_of_current_letter in
            print_char char_of_letter;
            display_letter (ascii_of_current_letter + 1)
            in
            display_letter ascii_of_a;
            print_char '\n'

let () =
    ft_print_alphabet ()
