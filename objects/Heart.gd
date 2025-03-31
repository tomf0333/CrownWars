extends Node

class Heart:
	
	var popularity = null
	
	func _init(_popularity: int):
		self.popularity = _popularity
	
	func get_hurt(damage: int):
		self.popularity -= damage
	
	func is_alive() -> bool:
		return self.popularity > 0
	
	# Getters
	func get_popularity() -> int:
		return self.popularity
	
	# Setters
	func set_popularity(_popularity: int):
		self.popularity = _popularity
