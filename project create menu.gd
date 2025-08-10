extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_pressed() -> void:
	ProjectManager.create_project($LineEdit.text)
	self.hide()
	ToastManager.toast("Success", 1)
