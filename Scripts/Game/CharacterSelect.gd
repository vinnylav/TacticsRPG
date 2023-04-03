extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var orcH = "res://Scripts/Hero/Orc_Rig.tscn"
var pirateH = "res://Scripts/Hero/Pirate_Rig.tscn"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_button_pressed():
	pass


func _on_previous_button_pressed():
	pass


func _on_select_hero_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Zone1/Zone1.tscn")
	pass # Replace with function body.
