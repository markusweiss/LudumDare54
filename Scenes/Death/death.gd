extends CanvasLayer

func _ready():
	%Score.text = str(Global.scoreTogether) + " points"
	
func _on_try_again_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main/main.tscn")

func _on_quit_pressed():
	get_tree().quit()

