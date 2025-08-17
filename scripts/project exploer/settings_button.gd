extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Settings.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	ToastManager.toast("test, should show settings", 4)
	$Settings.show()
