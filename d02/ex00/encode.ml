(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   encode.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/15 13:27:08 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/16 13:42:32 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec encode lst = match lst with
    | hd::tl -> (
        let rec loop lst el c acc = match lst with
        | hd::tl -> if (hd = el) then loop tl hd (c+1) acc else loop tl hd 1 (acc @ [(c, el)])
        | [] -> acc @ [(c, el)]
        in loop lst hd 0 []
    )
    | [] -> []


let rec print_list_int lst = match lst with
    | hd::tl -> (
        print_int hd;
        print_string "; ";
        print_list_int tl
    )
    | [] -> print_string "\n"

let rec print_list_tuple_int lst = match lst with
    | hd::tl -> (
        let (n, x) = hd in
        print_string "(";
        print_int n;
        print_string ", ";
        print_int x;
        print_string ")";
        print_string "; ";
        print_list_tuple_int tl
    )
    | [] -> print_string "\n"

let rec print_list_encoded_int lst = match lst with
    | hd::tl -> (
        let (n, x) = hd in
        let rec print_loop_int n x tl =
        if n > 0 then (
            print_int x;
            print_loop_int (n-1) x tl
        )
        else print_list_encoded_int tl
        in print_loop_int n x tl
    )
    | [] -> print_string "\n"


let main () =
    let list_int = [2; 2; 2; 2; 42; 42; 100; 101] in
    print_string "List: ";
    print_list_int list_int;
    print_string "Tuple: ";
    print_list_tuple_int (encode list_int);
    print_string "Decode: ";
    print_list_encoded_int (encode list_int)

let () = main ()




