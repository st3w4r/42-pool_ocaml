class a =
    object
    end

let () =
    let foo = new a in
    let bar = Oo.copy foo in
    Printf.printf "%B\n" (foo = bar)
