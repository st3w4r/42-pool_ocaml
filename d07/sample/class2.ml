class student name =
    object
        val _name:string = name
        val mutable _age = 0

        method get_name = _name
        method get_age = _age
        method birtday x = _age <- x
    end

let () =
    let marvin = new student ("Marvin") in
    print_endline marvin#get_name;
    print_endline (string_of_int marvin#get_age)
