extends Node

const SPAWN_RADIUS = 1100

@export var bat_enemy_scene: PackedScene

func _ready():
	$Timer.timeout.connect(on_timer_timeout)

func on_timer_timeout():
	#Grab player, return if null
	var player = get_tree().get_first_node_in_group("player") as Node2D
	if player == null:
		return
	
	#Get random direction and spwan position
	var random_direction = Vector2.RIGHT.rotated(randf_range(0, TAU))
	var spawn_postion = player.global_position + (random_direction * SPAWN_RADIUS)
	
	#put enemy in sceen
	var enemy = bat_enemy_scene.instantiate() as Node2D
	get_parent().add_child(enemy)
	enemy.global_position = spawn_postion
