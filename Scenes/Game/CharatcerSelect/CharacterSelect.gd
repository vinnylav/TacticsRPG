extends Node2D

@onready var select_camera = $Camera2D
var char_dic = {
	
}
#this is your pointer that "points" to the current character selected
var char_selected = 0

var totalCharacters = 8

func _ready():
	for i in totalCharacters:
		char_dic[i] = {
			"position": get_node("Heros").get_child(i-1).global_position
		}
	print(char_dic)
	select_camera.is_current()
	#initializes the camera to char_dic[0], or w.e character u wanna start on idk
	select_camera.global_position = char_dic[char_selected]["position"]
	
func _process(delta):
	pass


func _on_next_button_pressed():
	char_selected += 1
	#this checks if we're at the very front of the dictionary, meaning at position 1 in this case.
	#if we were, then we just point to the very front of the dictionary instead.
	if char_selected > char_dic.size()-1:
		char_selected = 0
	char_changed()

func _on_previous_button_pressed():
	char_selected -= 1
	#this will check if we're basically at the end of the dictionary on the left
	#or in other words, at position 0.
	#if we are, then we set the current "pointer" to just point at the very front of the dictionary by getting the size.
	#keep in mind, the reason we do size()-1 is bcuz our dicionary has 2 keys, but our keys start counting from 0-1.
	if char_selected < 0: 
		char_selected = char_dic.size()-1
	char_changed()


func _on_select_hero_button_pressed():
	print_debug(char_selected)
	get_tree().change_scene_to_file("res://Scenes/Zone1/Zone1.tscn")
	
#everytime you click next or prev, we're going to update the camera position.
#SUGESTION: Use tween to make the process smoother and look nice instead of just setting the position!
func char_changed():
	select_camera.global_position = char_dic[char_selected]["position"]
