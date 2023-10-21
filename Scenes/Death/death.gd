extends CanvasLayer

func _ready():
	Global.empPower = 0
	Global.empMegaBeam = 0
	%Score.text = str(Global.scoreTogether) + " points"
	if Global.scoreTogether > Global.highScore:
		Global.highScore =Global.scoreTogether
	
func _on_try_again_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/levels.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_back_to_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/Start/start.tscn")
