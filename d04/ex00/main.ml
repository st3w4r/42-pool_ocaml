(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/17 14:39:33 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/17 17:32:34 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let rec print_all lst = match lst with
        | hd::tl -> (
                print_string (Color.toString hd);
                print_string " "; print_string
                (Color.toStringVerbose hd);
                print_endline "";
            print_all tl
        )
        | [] -> ()
    in print_all Color.all

let () = main ()
