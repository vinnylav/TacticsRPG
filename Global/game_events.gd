extends Node

signal exp_small_collected(number: float)

func emit_exp_small_collected(number: float):
	exp_small_collected.emit(number)
