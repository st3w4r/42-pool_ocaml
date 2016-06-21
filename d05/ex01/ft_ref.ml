(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/20 17:42:14 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/21 21:15:13 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = {mutable contents:'a}

let return x = {contents = x}

let get x = x.contents

let set x y = x.contents <- y

let bind x f = return (get (f (get x)));;


let () =
    let n = return 21 in
    print_int (get n); print_endline "";
    set n 42;
    print_int (get n); print_endline "";
    let n_new = bind n (fun x -> (return ((string_of_int x) ^ " Bornt2Code"))) in
    print_string (get n_new); print_endline ""
