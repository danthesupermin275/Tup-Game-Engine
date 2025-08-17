extends Panel

func _process(delta: float) -> void:
	if ToastManager.toast_on == true:
		if position.x != -960:
			position.x -= 24
	else:
		if position.x != 0:
			position.x += 96
