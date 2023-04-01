extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match Heros.characterOptions:
		0:
			get_node("UI/HeroHolder").add_child("res://Orc_Rig.tscn")


func _on_next_button_pressed():
	pass


func _on_previous_button_pressed():
	pass
