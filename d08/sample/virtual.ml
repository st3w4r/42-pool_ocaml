class virtual hat =
    object 
        method virtual wear: unit
    end

class cap =
    object 
        inherit hat
        method wear = ()
    end
