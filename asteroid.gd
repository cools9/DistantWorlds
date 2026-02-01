extends Node2D

var speed = Vector2.ZERO
var rotation_speed = 0.0

func _ready():
	var screen_size = get_viewport_rect().size
	
	# Random position
	position = Vector2(randf() * screen_size.x, randf() * screen_size.y)
	
	# Random scale
	scale = Vector2(randf_range(0.3, 1.0), randf_range(0.3, 1.0))
	
	# Random speed
	speed = Vector2(randf_range(-100, 100), randf_range(-100, 100))
	
	# Random rotation speed
	rotation_speed = randf_range(-2, 2)

func _process(delta):
	position += speed * delta
	rotation += rotation_speed * delta
	
	# Wrap around screen edges
	var screen_size = get_viewport_rect().size
	if position.x > screen_size.x:
		position.x = 0
	elif position.x < 0:
		position.x = screen_size.x
	if position.y > screen_size.y:
		position.y = 0
	elif position.y < 0:
		position.y = screen_size.y
