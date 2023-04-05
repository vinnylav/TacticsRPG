extends Node

@export_range(0,1) var drop_percent: float = .5
@export var health_component: Node
@export var exp_scene: PackedScene

func _ready():
	(health_component as HealthComponent).died.connect(on_died)

func on_died():
	#use drop %
	if randf() > drop_percent:
		return
	
	if exp_scene == null:
		return
		
	if not owner is Node2D:
		return
		
	var spawn_position = (owner as Node2D).global_position
	var exp_instance = exp_scene.instantiate() as Node2D
	owner.get_parent().add_child(exp_instance)
	exp_instance.global_position = spawn_position
