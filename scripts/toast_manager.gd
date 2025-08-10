extends Node2D

var toast_content : String
var toast_on : bool

func toast(message, time) -> void:
	toast_on = true
	toast_content = message
	await get_tree().create_timer(time).timeout
	toast_on = false

func get_toast_content():
	return toast_content
