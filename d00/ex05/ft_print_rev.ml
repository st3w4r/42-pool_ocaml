let ft_print_rev sentence =
    let length = String.length sentence in
    let rec read_letter pos =
        if (pos = 0)
        then print_char '\n'
        else
            begin
                print_char (String.get sentence (pos - 1));
                read_letter (pos - 1)
            end
    in read_letter length

let () =
    ft_print_rev "Hello man !";
    ft_print_rev "OK";
    ft_print_rev ""
