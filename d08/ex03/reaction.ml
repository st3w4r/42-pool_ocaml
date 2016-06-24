(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   reaction.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 20:40:35 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 22:16:07 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual reaction (mStart : Molecule.molecule) (mEnd : Molecule.molecule) =
    object
        val _start : Molecule.molecule = mStart
        val _end : Molecule.molecule = mEnd

        method virtual get_start : (Molecule.molecule * int) list
        method virtual get_result : (Molecule.molecule * int) list
        method virtual balance : reaction
        method virtual is_balanced : bool
    end
