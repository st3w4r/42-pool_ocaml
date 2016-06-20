(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/20 17:42:14 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/20 22:34:53 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = {mutable contents:'a}

let return x = {contents = x}

let get x = x.contents

let set x y = x.contents <- y

let bind x f = return (get (f (get x)));;

