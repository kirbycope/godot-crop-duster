extends Node2D

var main_scene = preload("res://scenes/main.tscn").instantiate()

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var ui: Control = $UI


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		get_tree().root.add_child(main_scene)
		queue_free()


func _ready() -> void:
	animation_player.play("intro")
	ui.hide()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	animation_player.play("loop")
	ui.show()
