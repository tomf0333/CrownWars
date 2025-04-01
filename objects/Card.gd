extends Node

class_name Card_old

enum Suit {
	CLUB,
	HEART,
	SPADE,
	DIAMOND,
	NONE
}

var num : int
var suit : Suit

func _init(_num : int = -1, _suit : Suit = Suit.NONE):
	self.num = _num
	self.suit = _suit

# Getters
func get_num() -> int:
	return self.num

func get_suit() -> Suit:
	return self.suit

# Setters
func set_num(new_num : int):
	self.num = new_num

func set_suit(new_suit : Suit):
	self.suit = new_suit
