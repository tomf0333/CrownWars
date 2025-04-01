extends SubViewportContainer

func _ready() -> void:
	var screenSize = get_viewport().size
	$".".size = screenSize
	$SubViewport/TextureRect.size = screenSize
	
	print(screenSize)
	print($SubViewport/TextureRect.size)
