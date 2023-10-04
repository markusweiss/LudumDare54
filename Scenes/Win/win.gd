extends CanvasLayer

func _ready():
	Global.empPower = 0
	Global.empMegaBeam = 0
	if Global.scoreTogether > Global.highScore:
		Global.highScore =Global.scoreTogether

func _on_start_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main/main.tscn")


func _on_back_to_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/Start/start.tscn")


func _on_quit_game_pressed():
	get_tree().quit()
