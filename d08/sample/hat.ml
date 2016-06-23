class hat d=
    object
        val diameter = d
        method wear = Printf.printf "Hey Hat\n"
    end

class cap d =
    object
        inherit hat d as super
        method wear =
            super#wear;
            Printf.printf "Cap's lock\n"
    end

class branded_item b =
    object
        val brand = b
        method wear =
            Printf.printf "Representing %s\n" b
    end

class branded_snapback b d =
    object
        inherit cap d as sn
        inherit branded_item b as bi
        method my_wear =
        begin
            sn#wear;
            bi#wear;
            Printf.printf "HA!\n"
        end
    end

let () =
    let h = new branded_snapback "B2C" 42 in
    Printf.printf "Hat:\n";
    h#wear;
    Printf.printf "Hat:\n";
    h#my_wear 
