extends CanvasLayer


func _on_easy_pressed():
	Global.level = 1
	get_tree().change_scene_to_file("res://Scenes/Main/main.tscn")

func _on_middle_pressed():
	Global.level = 2
	get_tree().change_scene_to_file("res://Scenes/Main/main.tscn")

func _on_hard_pressed():
	Global.level = 3
	get_tree().change_scene_to_file("res://Scenes/Main/main.tscn")
