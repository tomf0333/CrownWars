extends Node

class_name PlayerHeart

var popularity : int

func _init(_popularity: int = -1):
	self.popularity = _popularity

func get_hurt(damage: int):
	self.popularity -= damage

func is_alive() -> bool:
	return self.popularity > 0

# Getters
func get_popularity() -> int:
	return self.popularity

# Setters
func set_popularity(new_popularity: int):
	self.popularity = new_popularity
