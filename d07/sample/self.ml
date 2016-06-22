class a value =
    object (self)
        val _value = value
        method get_value = value
        method to_string = print_endline (self#get_value)
    end

let () =
    let foo = new a "foo" in
    foo#to_string
