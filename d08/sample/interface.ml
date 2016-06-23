class type my_class =
    object
        method m1: unit
        method m2: unit
    end

type my_type = <m1:unit; m2:unit>

class aClass =
    object
        method m1 = ()
        method m2 = ()
    end

class otherClass =
    object
        method m1 = 3
        method m2 = ()
    end

let a: my_class = new otherClass
