(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/20 22:38:09 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/20 23:33:20 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let arr = ref [||]

let bad_jokes argc argv =
	if argc = 2
	then
		try
			let file = open_in argv.(1) in
			try
				while true do
					let line = input_line file in
					arr := Array.append !arr [|line|]
				done
			with End_of_file -> close_in file;
			close_in file
		  Random.self_init ();
		  Printf.printf "%s\n" (Array.get !arr (Random.int (Array.length !arr)))
		with
		| _ -> invalid_arg "Invalid file"
	else invalid_arg "Invalid argument need 2"

let () =
	let argv = Sys.argv in
	let argc = (Array.length argv) in
	try bad_jokes argc argv with
	| _ -> ()
