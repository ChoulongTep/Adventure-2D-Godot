extends ParallaxBackground

var srcoll_Speed : float = 100.00

func _process(delta):
	scroll_offset.x -= srcoll_Speed * delta
