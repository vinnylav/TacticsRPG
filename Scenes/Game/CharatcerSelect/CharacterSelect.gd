extends Node2D

@onready var select_camera = $Camera2D
var char_array [(-2436.11,950),(-5416.664,1266.667)]
@onready var orc_pos = Vector2(-2436.11,950)
@onready var pirate_pos = $Heros/PirateRig.global_position
@onready var elf_pos = $Heros/ElfTemp.global_position
@onready var golem_pos = $Heros/GolemTemp.global_position


func _ready():
	select_camera.is_current()


func _process(delta):
	pass


func _on_next_button_pressed():
	for n in char_array:
		char_array += 1


func _on_previous_button_pressed():
	select_camera.global_position = pirate_pos


func _on_select_hero_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Zone1/Zone1.tscn")
	
