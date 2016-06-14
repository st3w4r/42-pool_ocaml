(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/14 13:55:57 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/14 17:34:46 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let repeat_string ?str:(str="x") n =
    if n < 0 then "Error"
    else
        begin
            let rec repeat n str acc =
                if n <= 0 then acc
                else repeat (n - 1) str (str ^ acc)
            in repeat n str ""
        end



let main () =
    print_endline (repeat_string (-1));
    print_endline (repeat_string 0);
    print_endline (repeat_string ~str:"Toto" 1);
    print_endline (repeat_string  2);
    print_endline (repeat_string  ~str:"a" 5);
    print_endline (repeat_string  ~str:"what" 3);
    print_endline (repeat_string  ~str:"what" 0)

let () = main ()

