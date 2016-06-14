(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstadter_mf.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/14 21:30:08 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/14 21:57:53 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*n - M(F(n - 1))
n - F(M(n - 1))*)

let rec hfs_f n =
    if n < 0 then (-1)
    else if n = 0 then 1
    else n - (hfs_m (hfs_f (n -1)))
and hfs_m n =
    if n < 0 then (-1)
    else if n = 0 then 0
    else n - (hfs_f (hfs_m (n -1)))


let main () =
    print_int (hfs_m (-1)) ; print_string "\n";
    print_int (hfs_f (-1)) ; print_string "\n";
    print_int (hfs_m 0) ; print_string "\n";
    print_int (hfs_f 0) ; print_string "\n";
    print_int (hfs_m 4) ; print_string "\n";
    print_int (hfs_f 4) ; print_string "\n"

let () = main ()
