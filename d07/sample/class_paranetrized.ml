class ['a, 'b] pair (x:'a) (y:'b) =
    object
        val _x = x
        val _y = y
        method first = _x
        method second = _y
    end

let () =
    let p = new pair 42 "Foo" in
    print_endline p#second
