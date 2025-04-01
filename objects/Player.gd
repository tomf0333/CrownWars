extends Node

class_name Player

var player_name : String
var heart : PlayerHeart

func _init(_player_name : String = "Nameless", _heart : PlayerHeart = null):
	self.player_name = _player_name
	self.heart = _heart

func dumb():
	pass
		
