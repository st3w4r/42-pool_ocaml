(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/17 14:39:33 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/17 16:37:03 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let rec print_all lst = match lst with
        | hd::tl -> (
            let print_type lst = match lst with
                | Color.Spade -> (print_string (Color.toString Color.Spade);
                                  print_string " "; print_string
                                  (Color.toStringVerbose Color.Spade);
                                  print_endline "");
                | Color.Heart -> (print_string (Color.toString Color.Heart);
                                  print_string " "; print_string
                                  (Color.toStringVerbose Color.Heart);
                                  print_endline "");
                | Color.Diamond -> (print_string (Color.toString Color.Diamond);
                                    print_string " "; print_string
                                    (Color.toStringVerbose Color.Diamond);
                                    print_endline "");
                | Color.Club -> (print_string (Color.toString Color.Club);
                                 print_string " "; print_string
                                 (Color.toStringVerbose Color.Club);
                                 print_endline "")
            in print_type hd;
                print_all tl
        )
        | [] -> ()

    in print_all Color.all

let () = main ()
