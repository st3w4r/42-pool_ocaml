(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   trinitrotoluene.ml                                 :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 13:29:37 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 17:44:31 by ybarbier         ###   ########.fr       *)
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
        string_list_tuple_atom tl (acc ^ (x#symbole ^ (if n = 1 then "" else string_of_int n)))
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

let priority_order atom1 atom2 =
    let s1 = atom1#symbole in
    let s2 = atom2#symbole in
    if (String.compare s1 "C") = 0 then (-1)
    else if (String.compare s2 "C") = 0 then 1
    else if (String.compare s1 "H") = 0 then (-1)
    else if (String.compare s2 "H") = 0 then 1
    else String.compare s1 s2

class carbon_dioxyde =
    object (self)
        inherit Molecule.molecule
        val atoms : Atom.atom list = [
            new Carbon.carbon;
            new Oxygen.oxygen;
            new Oxygen.oxygen
        ]

        method name = "Carbon dioxyde"
        method formula =
            begin
                let sorted_list = List.sort priority_order  atoms in
                let atom_tuple_lst = encode sorted_list in
                hill atom_tuple_lst
            end
        method to_string =
            begin
                let atom_tuple_lst = encode atoms in
                desc atom_tuple_lst
            end
        method equals (m : Molecule.molecule) = (m#formula = self#formula)
    end
