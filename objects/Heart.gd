extends Node

class Heart:
	
	var popularity : int = -1
	
	func _init(popularity: int = -1):
		self.popularity = popularity
	
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
