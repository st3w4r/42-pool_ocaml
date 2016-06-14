(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/14 18:45:48 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/14 18:57:34 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec fibonacci n =
    if n < 0 then (-1)
    else if n = 0 then 0
    else if n = 1 then 1
    else ((fibonacci (n - 2)) + (fibonacci (n - 1)))


let main () =
    print_int (fibonacci (-42)); print_string "\n";
    print_int (fibonacci 1); print_string "\n";
    print_int (fibonacci 3); print_string "\n";
    print_int (fibonacci 6); print_string "\n"


let () =
    main ()
