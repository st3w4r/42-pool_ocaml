class student name =
    object
        val _name:string = name
        val mutable _age = 0

        method birtday x = _age <- x
        method to_string = _name ^ " : " ^ (string_of_int _age) ^ " years okd."
    end

let () =
    let marvin = new student ("Marvin") in
    marvin#birtday 42;
    print_endline marvin#to_string
