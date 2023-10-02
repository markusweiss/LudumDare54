extends CanvasLayer

func _ready():
	%HighScore.text = str(Global.highScore) + " points"

func _on_start_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main/main.tscn")


func _on_quit_game_pressed():
	get_tree().quit()


func _on_back_to_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/Start/start.tscn")
