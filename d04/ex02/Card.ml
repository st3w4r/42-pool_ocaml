(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Card.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ybarbier <ybarbier@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2016/06/17 17:35:24 by ybarbier          #+#    #+#             *)
(*   Updated: 2016/06/17 21:04:42 by ybarbier         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module Color =
    struct
        type t = Spade | Heart | Diamond | Club

        let all = [Spade; Heart; Diamond; Club]

        let toString t = match t with
            | Spade -> "S"
            | Heart -> "H"
            | Diamond -> "D"
            | Club -> "C"

        let toStringVerbose t = match t with
            | Spade -> "Spade"
            | Heart -> "Heart"
            | Diamond -> "Diamond"
            | Club -> "Club"
    end

module Value =
    struct
        type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen |
        King | As

        let all = [T2; T3; T4; T5; T6; T7; T8; T9; T10; Jack; Queen; King; As]

        let toInt t = match t with
            | T2 -> 1
            | T3 -> 2
            | T4 -> 3
            | T5 -> 4
            | T6 -> 5
            | T7 -> 6
            | T8 -> 7
            | T9 -> 8
            | T10 -> 9
            | Jack -> 10
            | Queen -> 11
            | King -> 12
            | As -> 13

        let toString t = match t with
            | T2 -> "2"
            | T3 -> "3"
            | T4 -> "4"
            | T5 -> "5"
            | T6 -> "6"
            | T7 -> "7"
            | T8 -> "8"
            | T9 -> "9"
            | T10 -> "10"
            | Jack -> "J"
            | Queen -> "Q"
            | King -> "K"
            | As -> "A"

        let toStringVerbose t = match t with
            | T2 -> "2"
            | T3 -> "3"
            | T4 -> "4"
            | T5 -> "5"
            | T6 -> "6"
            | T7 -> "7"
            | T8 -> "8"
            | T9 -> "9"
            | T10 -> "10"
            | Jack -> "Jack"
            | Queen -> "Queen"
            | King -> "King"
            | As -> "As"

        let next t = match t with
            | T2 -> T3
            | T3 -> T4
            | T4 -> T5
            | T5 -> T6
            | T6 -> T7
            | T7 -> T8
            | T8 -> T9
            | T9 -> T10
            | T10 -> Jack
            | Jack -> Queen
            | Queen -> King
            | King -> As
            | As -> invalid_arg (toString As)

        let previous t = match t with
            | T2 -> invalid_arg (toString T2)
            | T3 -> T2
            | T4 -> T3
            | T5 -> T4
            | T6 -> T5
            | T7 -> T6
            | T8 -> T7
            | T9 -> T8
            | T10 -> T9
            | Jack -> T10
            | Queen -> Jack
            | King -> Queen
            | As -> King
    end

type t = (Value.t * Color.t)

let newCard value color : t = (value, color)

let allSpades = (
    let rec allValues lst acc = match lst with
        | hd::tl -> (
            allValues tl (List.append acc [(newCard hd Color.Spade)])
        )
        | [] -> acc
    in allValues Value.all []
)

let allHearts = (
    let rec allValues lst acc = match lst with
        | hd::tl -> (
            allValues tl (List.append acc [(newCard hd Color.Heart)])
        )
        | [] -> acc
    in allValues Value.all []
)

let allDiamonds = (
    let rec allValues lst acc = match lst with
        | hd::tl -> (
            allValues tl (List.append acc [(newCard hd Color.Diamond)])
        )
        | [] -> acc
    in allValues Value.all []
)

let allClubs = (
    let rec allValues lst acc = match lst with
        | hd::tl -> (
            allValues tl (List.append acc [(newCard hd Color.Club)])
        )
        | [] -> acc
    in allValues Value.all []
)

let all = (
    let rec allValues lst acc = match lst with
        | hd::tl -> (allValues tl (List.append acc [hd]))
        | [] -> acc
    in allValues allClubs (allValues allDiamonds (allValues allHearts (allValues allSpades [])))
)


let getValue ((v, c) :t ) = v
let getColor ((v, c) :t ) = c

let toString (card :t) = (
    let v = getValue card in
    let c = getColor card in
    Printf.sprintf "%s%s" (Value.toString v) (Color.toString c)
)

let toStringVerbose (card :t) = (
    let v = getValue card in
    let c = getColor card in
    Printf.sprintf "Card(%s, %s)" (Value.toStringVerbose v) (Color.toStringVerbose c)
)
