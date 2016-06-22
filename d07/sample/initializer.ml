class a =
    object
        initializer print_endline "Creation instance a"
        method talk = print_endline "Yay I'm alive"
    end

let () =
    let instance = new a in
    instance#talk
