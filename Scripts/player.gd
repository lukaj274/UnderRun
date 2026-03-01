extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var mouse_location


func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	if Input.is_action_pressed("move_forward"):
		velocity.y = SPEED

	move_and_slide()

func _process(delta: float) -> void:
	mouse_location = get_global_mouse_position()
	var angle = (mouse_location - global_position).angle()

	rotation_degrees = angle
