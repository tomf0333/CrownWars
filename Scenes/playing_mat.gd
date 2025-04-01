extends Node

const PlayingCard = preload("res://Scenes/card_template.tscn")

func _init():
	pass

func _ready() -> void:
	var card1_object = PlayingCard.instantiate()
	add_child(card1_object)
	
	#var card1 = card1_object.get_script().new(4, Card.Suit.CLUB)
	card1_object.set_num(1)
	card1_object.set_suit(Card.Suit.SPADE)
	card1_object.update_card_image()
	
	print(card1_object.get_num())

	var card2_object = PlayingCard.instantiate()
	add_child(card2_object)
	card2_object.position = Vector2(100, 12)
	
	#var card2 = card2_object.get_script().new(9, Card.Suit.HEART)
	card2_object.set_num(12)
	card2_object.set_suit(Card.Suit.DIAMOND)
	card2_object.update_card_image()
	
	print(card2_object.get_num())
