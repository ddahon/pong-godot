class_name Paddle extends CharacterBody2D

@onready var rect: Rect2 = $CollisionShape2D.shape.get_rect()

func _physics_process(delta: float) -> void:
	move_and_slide()
	# make the paddle stay inside the viewport
	var viewport_rect = get_viewport_rect()
	position.y = clamp(position.y, 0, viewport_rect.size.y - rect.size.y)
	print_debug(position.y)
