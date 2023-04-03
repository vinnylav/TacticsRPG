extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var orchero = "res://Scripts/Hero/Orc_Rig.tscn"
var piratehero = "res://Scripts/Hero/Pirate_Rig.tscn"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match Heros.characterOptions:
		0:
			$UI/HeroHolder.add_child(orchero)
		1:
			$UI/HeroHolder.add_child(piratehero)


func _on_next_button_pressed():
	$UI/HeroHolder.add_child(orchero)


func _on_previous_button_pressed():
	$UI/HeroHolder.add_child(piratehero)
