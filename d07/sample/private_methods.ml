class a x =
    object (self)
        val _x = x
        method private format = "value x: " ^ _x ^ "\n"
        method print = print_string self#format
    end

let () =
    let foo = new a "bar" in
    foo#print
