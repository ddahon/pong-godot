class_name ball_spawner extends Node2D

var ball_scene = preload("res://ball.tscn")
var ball: Ball

func spawn():
	ball = ball_scene.instantiate()
	ball.position = Vector2(960, 540)
	ball.set_axis_velocity(Vector2(-900, 100))
	add_child(ball)
	print_debug("spawned")

func _ready() -> void:
	spawn()

func _on_leave_arena(body: Node2D) -> void:
	ball.queue_free()
	await get_tree().create_timer(2).timeout
	spawn()
