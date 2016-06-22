let () =
    let p =
        object
            val mutable _x = 0
            method get_x = _x
            method increment d = _x <- _x + d
        end
    in
    print_endline (string_of_int p#get_x);
    p#increment 42;
    print_endline (string_of_int p#get_x) 
