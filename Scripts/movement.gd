extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_movement(delta)

func _movement(delta: float) -> void:
	var cursor_pos := get_global_mouse_position()
	look_at(cursor_pos)
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		position = position.move_toward(cursor_pos, delta + get_meta("Speed"))

	
	
	
	
