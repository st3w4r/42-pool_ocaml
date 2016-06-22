class grade value =
        object
            val _value:int = value
            method to_string = print_endline ("Note: " ^ string_of_int(_value))
        end

class student name =
    object
        val _name:string = name
        method evaluation x = (new grade x)#to_string
    end

let () =
    let marvin = new student "Marvin" in
    marvin#evaluation 42;
