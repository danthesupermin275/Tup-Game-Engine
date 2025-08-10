extends Node

var project_folder

func check_OS():
	if OS.get_name() == "windows":
		project_folder = "C:/Users/TupSDK/Projects"
	if OS.get_name() == "android":
		project_folder = "/storage/emulated/0/TupSDK/Projects"

func create_project(name: String):
	var full_path = project_folder + "/" + name
	if not DirAccess.dir_exists_absolute(full_path):
		DirAccess.make_dir_recursive_absolute(full_path)
		return "project created!"
	else:
		return "error: project exists already"
