(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   molecule.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/24 12:38:09 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/24 17:22:35 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual molecule =
    object
        method virtual name : string
        method virtual formula : string
        method virtual to_string : string
        method virtual equals : molecule -> bool
    end
