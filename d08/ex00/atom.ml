(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   atom.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 11:18:00 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 11:58:49 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual atom =
    object
        method virtual name : string
        method virtual symbole : string
        method virtual atomic_number : int
        method virtual to_string : string
        method virtual equals : atom -> bool
    end
