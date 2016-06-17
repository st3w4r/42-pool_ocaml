(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/17 14:39:33 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/17 17:27:59 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
    let rec print_type lst = match lst with
                | hd::tl -> (
                                print_string "[";
                                print_string (Value.toStringVerbose hd);
                                print_string "]:";
                                print_string "\ntoInt: ";
                                print_int (Value.toInt hd);
                                print_string "\ntoString: ";
                                print_string (Value.toString hd);
                                print_string "\ntoStringVerbose: ";
                                print_string (Value.toStringVerbose hd);
                                print_string "\nnext: ";
                                if (Value.toString hd) <> "A"  then (
                                    print_string (Value.toString (Value.next hd))
                                ) else print_string "Invalid Argument"; 
                                print_string "\nprevious: ";
                                if (Value.toString hd) <> "2"  then (
                                    print_string (Value.toString (Value.previous hd))
                                ) else print_string "Invalid Argument";
                                print_endline "";
                     print_type tl;
                )
                | [] -> ()
    in print_type Value.all


let () = main ()
