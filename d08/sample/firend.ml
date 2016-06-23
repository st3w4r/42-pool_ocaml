class student (n: string) =
    object (this)
        val name = n
        method getName = name
        method equls (that: student) = (this#getName = that#getName)
    end

let () =
    let marvin = new student "Marvin"
    and m2 = new student "Marvin" in

