extends Node

var current_experience = 0

func _ready():
	GameEvents.exp_small_collected.connect(on_exp_small_collected)

func increment_experience(number: float):
	current_experience += number
	print(current_experience)

func on_exp_small_collected(number: float):
	increment_experience(number)
