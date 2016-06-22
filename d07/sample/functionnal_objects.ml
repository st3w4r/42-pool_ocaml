class pair (a, b) =
    object
        val _x = a
        val _y = b
        method get = (_x, _y)
        method toString = "(" ^ (string_of_int _x) ^ " " ^ (string_of_int _y) ^ ")"
        method change c d = {< _x = _x + c; _y = _y + d>}
    end

let () =
    let p = new pair (42, 0) in
    print_endline p#toString;
    print_endline (p#change 1 42)#toString;
    print_endline p#toString
