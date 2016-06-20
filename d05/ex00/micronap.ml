(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   micronap.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/20 14:28:35 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/20 16:14:51 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let my_sleep () = Unix.sleep 1

let main argc argv =
    if argc = 2
    then
        try
            let sec n =
               for i = 0 to n do
                   my_sleep ()
               done
            in sec (int_of_string argv.(1))
        with
            | _ -> invalid_arg "Invalid int"
    else invalid_arg "Invalid arguement need 2"

let () =
    let argv = Sys.argv in
    let argc = (Array.length argv) in
    try main argc argv with
    | _ -> ()

