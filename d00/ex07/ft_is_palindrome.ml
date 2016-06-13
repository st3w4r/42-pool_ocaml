let ft_is_palindrome sentence =
    let length = String.length sentence in
    let rec check_letter pos pos_end =
        if (pos < pos_end)
        then
            begin
                if (String.get sentence pos) = (String.get sentence pos_end)
                then check_letter (pos + 1) (pos_end - 1)
                else false
            end
        else true
    in check_letter 0 (length - 1)


let main () =
    if ft_is_palindrome "madam"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome "radar"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome "car"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome "okok"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome "r"
    then print_endline "true"
    else print_endline "false";
    if ft_is_palindrome ""
    then print_endline "true"
    else print_endline "false"

let () = main ()
