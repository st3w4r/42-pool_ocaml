(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   trinitrotoluene.ml                                 :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 13:29:37 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 15:55:01 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec encode lst = match lst with
| hd::tl -> (
    let rec loop lst el c acc = match lst with
    | hd::tl -> if (hd#equals el) then loop tl hd (c+1) acc else loop tl hd 1 (acc @ [(c, el)])
    | [] -> acc @ [(c, el)]
    in loop lst hd 0 []
    )
| [] -> []

let hill atoms =
    let rec string_list_tuple_atom lst acc = match lst with
    | hd::tl -> (
        let (n, x) = hd in
        string_list_tuple_atom tl (acc ^ (x#symbole ^ string_of_int n))
    )
    | [] -> acc
    in string_list_tuple_atom atoms ""

let desc atoms =
    let rec string_list_tuple_atom lst acc = match lst with
    | hd::tl -> (
        let (n, x) = hd in
        string_list_tuple_atom tl (acc ^ (string_of_int n ^ " - "^ x#to_string ^ "\n"))
    )
    | [] -> acc
    in string_list_tuple_atom atoms ""
(*
let compare_string s1 s2 =
    if (String.compare s1 s2) > 0
    then s2
    else s1


   | x::xs -> let smaller, larger = List.partition (fun y -> y < x) xs
                  in quicksort smaller @ (x::quicksort larger)
*)
(*
let rec reorder lst = match lst with
    | [] -> []
    | [a] -> [a]
    | s::(t::q) -> if String.compare t#name s#name then s::(bulle (t::q))
                            else t::(bulle (s::q))

let rec sort lst = if reorder lst = lst then lst else sort (reorder lst)
*)
(*
      | [a]  -> [a]
              | s::(t::q) -> if s<t then s::(bulle (t::q))
                                            else t::(bulle (s::q));;

let rec tri_bulle l =
              if bulle l = l then l else tri_bulle (bulle l) ;;
*)

class trinitrotoluene =
    object (self)
        inherit Molecule.molecule
        val atoms : Atom.atom list = [
            new Nitrogen.nitrogen;
            new Nitrogen.nitrogen;
            new Nitrogen.nitrogen;
            new Hydrogen.hydrogen;
            new Hydrogen.hydrogen;
            new Hydrogen.hydrogen;
            new Hydrogen.hydrogen;
            new Hydrogen.hydrogen;
            new Oxygen.oxygen;
            new Oxygen.oxygen;
            new Oxygen.oxygen;
            new Oxygen.oxygen;
            new Oxygen.oxygen;
            new Oxygen.oxygen;
            new Carbon.carbon;
            new Carbon.carbon;
            new Carbon.carbon;
            new Carbon.carbon;
            new Carbon.carbon;
            new Carbon.carbon;
            new Carbon.carbon
    ]

        method name = "Trinitrotoluene"
        method formula =
            begin
                let atom_tuple_lst = encode atoms in
                hill atom_tuple_lst
            end
        method to_string =
            begin
                let atom_tuple_lst = encode atoms in
                desc atom_tuple_lst
            end
    end
