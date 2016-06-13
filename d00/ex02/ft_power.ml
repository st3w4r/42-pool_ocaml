let rec ft_power n p =
    if (p <= 0)
    then 1
    else
        begin
        n * ft_power n (p-1)
        end

let () =
    print_int (ft_power 2 4);
    print_char '\n';
    print_int (ft_power 3 0);
    print_char '\n';
    print_int (ft_power 0 5);
    print_char '\n';
    print_int (ft_power 2 5);
    print_char '\n';
    print_int (ft_power 5 10);
    print_char '\n';
    print_int (ft_power 5 2);
    print_char '\n';
    print_int (ft_power 6 3);
    print_char '\n';
    print_int (ft_power 0 1);
    print_char '\n';
    print_int (ft_power 1 0);
    print_char '\n';
