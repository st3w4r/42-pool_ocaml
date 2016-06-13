let ft_string_all func sentence =
    let length = String.length sentence in
    let rec apply_func pos =
        if (pos < length)
        then
            begin
                if func (String.get sentence pos) = false
                then false
                else
                apply_func (pos + 1)
            end
        else
            true
    in
    apply_func 0

let is_digit c = c >= '0' && c <= '9'

let main () =
    if ft_string_all is_digit "123456789"
    then print_endline "true"
    else print_endline "false";
    if ft_string_all is_digit "123d456789"
    then print_endline "true"
    else print_endline "false"



let () = main ()
