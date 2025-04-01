extends Node2D

static var HEIGHT = 70
static var WIDTH = 50
static var BORDER_WIDTH = 5

func _draw():
	draw_rect(Rect2(0.0, 0.0, WIDTH, HEIGHT), Color.WHITE)
	draw_rect(Rect2(0.0, 0.0, WIDTH, HEIGHT), Color.BLACK, false, BORDER_WIDTH)
	
func _ready() -> void:
	
	
	
	
	
	$CardRatio/CardMargin/CardDivide.position = Vector2(2.5,2.5)
	
	$CardRatio/CardMargin/CardDivide/TopSuit/ColorRect.custom_minimum_size = Vector2(WIDTH-BORDER_WIDTH,(HEIGHT-BORDER_WIDTH)/7)
	print($CardRatio/CardMargin/CardDivide/TopSuit/ColorRect.size)
	#$CardRatio/CardMargin/CardDivide/CardValue/ColorRect.custom_minimum_size = Vector2(WIDTH-BORDER_WIDTH,(HEIGHT-BORDER_WIDTH)/7*5)
	$CardRatio/CardMargin/CardDivide/CardValue/ColorRect.custom_minimum_size = Vector2(20,40)
	print($CardRatio/CardMargin/CardDivide/CardValue/ColorRect.size)
	$CardRatio/CardMargin/CardDivide/BottomSuit/ColorRect.custom_minimum_size = Vector2(WIDTH-BORDER_WIDTH,(HEIGHT-BORDER_WIDTH)/7)
	print($CardRatio/CardMargin/CardDivide/BottomSuit/ColorRect.size)
	
	
	
	
