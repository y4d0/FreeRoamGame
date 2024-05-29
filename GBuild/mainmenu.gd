class_name MainMenu
extends Control
@onready var start_button = $MarginContainer/VBoxContainer/Start_Button as Button
@onready var start_level = preload("res://world.tscn") as PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	start_button.button_down.connect(on_start_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
