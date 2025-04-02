extends Control

class_name Card

const numbers_texture_list = [
	preload("res://Assets/A.png"),
	preload("res://Assets/A_B.png"),
	preload("res://Assets/2.png"),
	preload("res://Assets/2_B.png"),
	preload("res://Assets/3.png"),
	preload("res://Assets/3_B.png"),
	preload("res://Assets/4.png"),
	preload("res://Assets/4_B.png"),
	preload("res://Assets/5.png"),
	preload("res://Assets/5_B.png"),
	preload("res://Assets/6.png"),
	preload("res://Assets/6_B.png"),
	preload("res://Assets/7.png"),
	preload("res://Assets/7_B.png"),
	preload("res://Assets/8.png"),
	preload("res://Assets/8_B.png"),
	preload("res://Assets/9.png"),
	preload("res://Assets/9_B.png"),
	preload("res://Assets/10.png"),
	preload("res://Assets/10_B.png"),
	preload("res://Assets/J.png"),
	preload("res://Assets/J_B.png"),
	preload("res://Assets/Q.png"),
	preload("res://Assets/Q_B.png"),
	preload("res://Assets/K.png"),
	preload("res://Assets/K_B.png")
]

const suites_texture_list = [
	preload("res://Assets/Club.png"),
	preload("res://Assets/Heart.png"),
	preload("res://Assets/Spade.png"),
	preload("res://Assets/Diamond.png")
]

enum Suit {
	CLUB,
	HEART,
	SPADE,
	DIAMOND,
	NONE
}

var num : int
var suit : Suit
var value : int

const ACE_NUM = 1
const JACK_NUM = 11
const ROYALTY_VAL = 40

func _init(_num : int = -1, _suit : Suit = Suit.NONE):
	self.num = _num
	if _num <= JACK_NUM:
		self.value = min(_num, 10) # jack is 11 but value is 10
	else:
		self.value = ROYALTY_VAL # QUEEN + KING 
	self.suit = _suit

func is_black() -> bool:
	return self.suit == Suit.CLUB or self.suit == Suit.SPADE
	
func update_card_image():
	var card_value_node = get_node("Container/MarginContainer/VBoxContainer/CardValue/CardValueTexture")
	var color_offset = 1 if self.is_black() else 0
	card_value_node.texture = numbers_texture_list[(self.num - 1) * 2 + color_offset]
	
	var card_suit_node_top = get_node("Container/MarginContainer/VBoxContainer/TopSuit/TopSuitTexture")
	var card_suit_node_bottom = get_node("Container/MarginContainer/VBoxContainer/BottomSuit/BottomSuitTexture")
	card_suit_node_top.texture = suites_texture_list[self.suit]
	card_suit_node_bottom.texture = suites_texture_list[self.suit]

# Getters
func get_num() -> int:
	return self.num

func get_suit() -> Suit:
	return self.suit

func get_value() -> int:
	return self.value
	
# Setters
func set_num(new_num : int):
	self.num = new_num

func set_suit(new_suit : Suit):
	self.suit = new_suit
