extends Node2D

@onready var paddle: Paddle = $Paddle

@export var speed: float = 1000
@export var up_control: StringName
@export var down_control: StringName

var score: int = 0

func _physics_process(delta):
	paddle.velocity.y = Input.get_axis(up_control, down_control) * speed


func _on_left_border_body_entered(body: Node2D) -> void:
	score += 1
	print_debug(score)
