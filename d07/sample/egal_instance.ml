(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   egal_instance.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/22 13:15:41 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/22 13:16:55 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class a =
    object
    end

let () =
    let foo = new a in
    let bar = new a in
    Printf.printf "%B\n" (foo = bar);
    Printf.printf "%B\n" (foo = foo)

