
type t

val newDeck : t

val toStringList : t -> string list
val toStringListVerbose : t -> string list
val drawCard : t -> (Deck.Card.t * Deck.Card.t list)
