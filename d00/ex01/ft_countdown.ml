let rec ft_countdown n =
    if n <= 0
    then
        begin
        print_int 0;
        print_char '\n'
    end
    else
        begin
        print_int n;
        print_char '\n';
        ft_countdown (n - 1)
        end

let () = 
    ft_countdown 5;
    print_char '\n';
    ft_countdown 1;
    print_char '\n';
    ft_countdown 0;
    print_char '\n';
    ft_countdown (-1);
    print_char '\n'
