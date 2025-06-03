extends Node2D

var main_scene = preload("res://scenes/main.tscn").instantiate()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		get_tree().root.add_child(main_scene)
		queue_free()
