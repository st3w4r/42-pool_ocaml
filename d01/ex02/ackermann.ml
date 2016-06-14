(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ackermann.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/14 18:43:22 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/14 18:43:23 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ackermann m n =
    if (m < 0 || n < 0) then (-1)
    else
        begin
            if m = 0 then n + 1
            else if m > 0 && n = 0 then ackermann (m - 1) 1
            else ackermann (m -1) (ackermann m (n -1))
        end


let main () =
    print_int (ackermann (-1) 7); print_string "\n";
    print_int (ackermann 5 (-1)); print_string "\n";
    print_int (ackermann 0 0); print_string "\n";
    print_int (ackermann 2 3); print_string "\n";
    print_int (ackermann 4 1); print_string "\n"

let () = main ()
