extends Node2D

@onready var paddle: Paddle = $Paddle

@export var speed: float = 500
@export var up_control: StringName
@export var down_control: StringName

func _physics_process(delta):
	paddle.velocity.y = Input.get_axis(up_control, down_control) * speed
