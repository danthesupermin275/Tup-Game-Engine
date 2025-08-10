extends RichTextLabel

func _process(delta: float)-> void:
	if ToastManager.toast_content != "":
		text = ToastManager.toast_content
