(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   tak.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/14 18:24:18 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/14 18:43:01 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec tak x y z =
    if y < x then (tak (tak (x - 1) y z) (tak (y - 1) z x) (tak(z - 1) x y))
    else z

let main () =
    print_int (tak 1 2 3); print_string "\n";
    print_int (tak 5 23 7); print_string "\n";
    print_int (tak 9 1 0); print_string "\n";
    print_int (tak 1 1 1); print_string "\n";
    print_int (tak 0 42 0); print_string "\n";
    print_int (tak 23498 98734 98776); print_string "\n"

let () =
    main ()
