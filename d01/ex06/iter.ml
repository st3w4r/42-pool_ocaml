(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/14 22:04:06 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/14 22:42:25 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec iter f x n =
    if n < 0 then (-1)
    else if n = 0 then x
    else f (iter f x (n -1))

let main () =
    print_int (iter (fun x -> x * x) 2 (-1)) ; print_string "\n";
    print_int (iter (fun x -> x * x) 42 0) ; print_string "\n";
    print_int (iter (fun x -> x * x) 2 1) ; print_string "\n";
    print_int (iter (fun x -> x * x) 2 4) ; print_string "\n";
    print_int (iter (fun x -> x * 2) 2 4) ; print_string "\n"

let () = main ()
