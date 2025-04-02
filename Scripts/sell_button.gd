extends Button

class_name SellButton

const JACK_ACE_BONUS = 10

func calculate_cards_value(card_list : Array[Card]) -> int:
	var num_of_jacks = 0
	var num_of_aces = 0
	var val = 0
	
	for card in card_list:
		if card.get_num() == Card.ACE_NUM:
			num_of_aces += 1
		elif card.get_num() == Card.JACK_NUM:
			num_of_jacks += 1
		val += card.get_value()
	
	while num_of_jacks > 0 and num_of_aces > 0:
		num_of_aces -= 1
		num_of_jacks -= 1
		val += JACK_ACE_BONUS
	
	return val
