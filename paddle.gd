class_name Paddle extends CharacterBody2D

@onready var rect: Rect2 = $CollisionShape2D.shape.get_rect()

func _physics_process(delta: float) -> void:
	move_and_slide()
