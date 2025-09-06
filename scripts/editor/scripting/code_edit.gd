extends CodeEdit

var code

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _compile():
	print(ScriptingManager.compile(self.text))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
