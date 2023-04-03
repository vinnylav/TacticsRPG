extends CharacterBody2D

const MAX_SPEED = 800

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var movement_vector = get_movement_vector()
	#normalize vector for angles
	var direction = movement_vector.normalized()
	
	velocity = direction * MAX_SPEED
	move_and_slide()
	

func get_movement_vector():
	#get_action_strength will retun 0-1, binary for keyandmouse but decimal for joypad
	var x_movement = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	#Down is positive in Y, so down firt, because we subtract
	var y_movement = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	return Vector2(x_movement, y_movement)
