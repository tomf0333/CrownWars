extends Node

enum Suit {
	CLUB,
	HEART,
	SPADE,
	DIAMOND,
	NONE
}

class Card:
	var num : int = -1
	var suit : Suit = Suit.NONE
	
	func _init(num : int = -1, suit : Suit = Suit.NONE):
		self.num = num
		self.suit = suit
	
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
