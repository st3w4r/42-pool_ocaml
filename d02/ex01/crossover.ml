(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   crossover.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/16 13:59:20 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/16 21:08:05 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let crossover lst_l lst_r =
    let rec check_lstl lst_l lst_r acc = match lst_l with
        | hd::tl -> (
            let rec check_lstr lst_r el acc = match lst_r with
                | hd::tl -> (
                    if hd = el then hd::acc
                    else check_lstr tl el acc
                )
                | [] -> acc
            in
            check_lstl tl lst_r (
                if (
                    let rec check_acc lst_acc el = match lst_acc with
                        | hd::tl -> (
                            if hd = el then true
                            else check_acc tl el
                        )
                        | [] -> false
                    in check_acc acc hd
                    ) = true
                then acc
                else check_lstr lst_r hd acc
            )
        )
        | [] -> acc
    in check_lstl lst_l lst_r []


(*--PRINT--*)
let rec print_list_int lst = match lst with
    | hd::tl -> (
        print_int hd;
        print_string "; ";
        print_list_int tl
    )
    | [] -> print_string "\n"

let main () =
    let lst1 = [10;10;10;42;23] in
    let lst2 = [10;42;10;21] in
    let lst3 = crossover lst1 lst2 in
    print_string "List 1: "; print_list_int lst1;
    print_string "List 2: "; print_list_int lst2;
    print_string "List 3: "; print_list_int lst3;

    let lst1_2 = [10;23] in
    let lst2_2 = [10;42;10;21] in
    let lst3_2 = crossover lst1_2 lst2_2 in
    print_string "List 1: "; print_list_int lst1_2;
    print_string "List 2: "; print_list_int lst2_2;
    print_string "List 3: "; print_list_int lst3_2;

    let lst1_3 = [] in
    let lst2_3 = [] in
    let lst3_3 = crossover lst1_3 lst2_3 in
    print_string "List 1: "; print_list_int lst1_3;
    print_string "List 2: "; print_list_int lst2_3;
    print_string "List 3: "; print_list_int lst3_3



let () = main ()



