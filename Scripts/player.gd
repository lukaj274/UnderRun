extends CharacterBody2D

func _process(delta: float) -> void:
	_movement(delta)

func _movement(delta: float) -> void:
	var cursor_pos := get_global_mouse_position()
	look_at(cursor_pos)
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var distance_vector = cursor_pos - position
		move_and_collide(distance_vector.normalized() * get_meta("Speed"))
