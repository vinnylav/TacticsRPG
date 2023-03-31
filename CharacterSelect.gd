extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match Heros.characterOptions:
		0:
			get_node("$UI/Node2D").get_child()


func _on_next_button_pressed():
	if Heros.characterOptions > 0:
		Heros.characterOptions += 1


func _on_previous_button_pressed():
	if Heros.characterOptions < 8:
		Heros.characterOptions -= 1
