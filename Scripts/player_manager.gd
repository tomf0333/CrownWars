extends Node2D

class_name PlayerManager

var player_name : String = "nameless"
var player_heart_ref : PlayerHeart = null
var sell_button_ref : SellButton = null
var coins : int = 0

var draw_pile : Array[Card]
var discard_pile : Array[Card]
var defense_line : Array[Card]
var active_cards : Array[Card]
var cards_to_sell : Array[Card]
var cards_in_hand : Array[Card]

const MAX_HAND_SIZE = 5

func _init():
	pass

func _ready() -> void:
	self.player_heart_ref = $"../PlayerHeart"
	self.sell_button_ref = $"../SellButton"
	
	self.cards_to_sell.append(Card.new(1, Card.Suit.CLUB))
	self.cards_to_sell.append(Card.new(2, Card.Suit.CLUB))
	self.cards_to_sell.append(Card.new(3, Card.Suit.CLUB))
	self.cards_to_sell.append(Card.new(11, Card.Suit.CLUB))
	
# Draw Cards
func shuffle_discard_to_draw() -> void:
	self.discard_pile.shuffle()
	for card in self.discard_pile:
		self.draw_pile.append(self.discard_pile.pop_front())
		
func one_card_draw() -> void:
	if len(self.draw_pile) == 0: # TODO - tomfe - edge case, when both piles are empty
		shuffle_discard_to_draw()
	cards_in_hand.append(self.draw_pile.pop_front())
	
func start_turn_draw() -> void:
	while len(self.cards_in_hand) < MAX_HAND_SIZE:
		one_card_draw()

# Move Cards
func move_to_sell(card_index : int): # TODO - tomfe - either get by index or by card, for now index is easier
	self.cards_to_sell.append(cards_in_hand.pop_at(card_index))

func move_to_defense(card_index : int):
	self.defense_line.append(self.cards_in_hand.pop_at(card_index))

func move_to_play(card_index : int):
	self.active_cards.append(self.cards_in_hand.pop_at(card_index))

func clean_play():
	self.discard_pile.append_array(self.active_cards)
	self.active_cards.clear()
		
# Actions
func sell_cards() -> void:
	if len(self.cards_to_sell) == 0:
		print("No cards to Sell...")
		return
		
	var cards_sell_value = self.sell_button_ref.calculate_cards_value(self.cards_to_sell)
	self.coins += cards_sell_value
	
	self.discard_pile.append_array(self.cards_to_sell)
	self.cards_to_sell.clear()
	
	print("Cards Sold for : " + str(cards_sell_value) + ", current coins balance: " + str(self.coins))
	
# Getters
func get_draw_pile() -> Array[Card]:
	return self.draw_pile

func get_discard_pile() -> Array[Card]:
	return self.discard_pile

func get_defense_line() -> Array[Card]:
	return self.defense_line

func get_active_cards() -> Array[Card]:
	return self.active_cards

func get_cards_to_sell() -> Array[Card]:
	return self.cards_to_sell

func get_cards_in_hand() -> Array[Card]:
	return self.cards_in_hand

# Setters
func set_draw_pile(cards : Array[Card]):
	self.draw_pile = cards

func add_to_coins(more_coins : int) -> void:
	self.coins += more_coins

# Signals
func _on_sell_button_pressed() -> void:
	self.sell_cards()
