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
	print_endline "Test with [5]:";
	ft_countdown 5;
	print_endline "Test with [1]:";
    ft_countdown 1;
	print_endline "Test with [0]:";
    ft_countdown 0;
	print_endline "Test with [-1]:";
    ft_countdown (-1);
