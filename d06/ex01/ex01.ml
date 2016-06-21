(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex01.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/21 16:24:13 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/21 17:58:55 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let hash_cal str =
    let rec loop str i sum =
        if i < (String.length str)
        then (
            let new_sum = ((int_of_char (String.get str i)) + sum) in
            loop str (i+1) new_sum
        )
        else sum
    in (loop str 0 0) + (String.length str)

module StringHash =
    struct
        type t = string
        let equal str_l str_r = str_l=str_r
        let hash str = hash_cal str
    end

module StringHashtbl = Hashtbl.Make(StringHash)

let () =
    let ht = StringHashtbl.create 5 in
    let values = [ "Hello"; "world"; "42"; "Ocaml"; "H" ] in
    let pairs = List.map (fun s -> (s, String.length s)) values in
    List.iter (fun (k,v) -> StringHashtbl.add ht k v) pairs;
    StringHashtbl.iter (fun k v -> Printf.printf "k = \"%s\", v = %d\n" k v) ht
