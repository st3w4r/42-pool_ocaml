(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/14 13:40:41 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/14 13:54:26 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let repeat_x n =
    if n < 0 then "Error"
    else
        begin
        let rec repeat n acc =
            if n <= 0 then acc
            else repeat (n - 1) ("x" ^ acc)
        in repeat n ""
        end

let main () =
    print_endline (repeat_x (-1));
    print_endline (repeat_x 0);
    print_endline (repeat_x 1);
    print_endline (repeat_x 3);
    print_endline (repeat_x 5);
    print_endline (repeat_x 10)

let () = main ()


