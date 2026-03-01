extends CharacterBody2D

@export var move_speed: float = 200.0

func _ready() -> void:
	look_at(get_local_mouse_position())

func _process(delta: float) -> void:
	# Rotate to face the mouse
	look_at(get_global_mouse_position())

func _physics_process(delta: float) -> void:
	var input_dir := Vector2.ZERO

	# Use an input action instead of KEY_W
	if Input.is_action_pressed("move_forward"):
		# Local "forward" is along +X if your sprite faces right
		input_dir = Vector2.UP.rotated(rotation)

	velocity = input_dir * move_speed
	move_and_slide()
