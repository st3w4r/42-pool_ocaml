(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   trinitrotoluene.ml                                 :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 13:29:37 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 19:53:40 by ybarbier         ###   ########.fr       *)
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

class alkane n =
    object (self)
        inherit Molecule.molecule
        val atoms : Atom.atom list = (
                 let c_nb = n in
                 let h_nb = (2 * n) + 2 in
                 let rec add_c acc i = (
                    if i < c_nb
                    then add_c ((new Carbon.carbon)::acc) (i+1)
                    else acc
                ) in
               let rec add_h acc i = (
                    if i < h_nb
                    then add_h ((new Hydrogen.hydrogen)::acc) (i+1)
                    else acc
                ) in
               let h_lst = add_h [] 0 in
               let c_lst = add_c [] 0 in
               List.append c_lst h_lst
        )

        method name =
            begin
                let select n = match n with
                | 1 -> "Methane"
                | 2 -> "Ethane"
                | 3 -> "Propane"
                | 4 -> "Butane"
                | 5 -> "Pentane"
                | 6 -> "Hexane"
                | 7 -> "Heptane"
                | 8 -> "Octane"
                | 9 -> "Nonane"
                | 10 -> "Decane"
                | 11 -> "Undecane"
                | 12 -> "Dodecane"
                | _ -> "Error"
                in select n
            end
        method formula =
            begin
                let sorted_list = List.sort priority_order atoms in
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
