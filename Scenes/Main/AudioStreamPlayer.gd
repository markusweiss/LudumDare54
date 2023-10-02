extends AudioStreamPlayer

func _ready():
	stream = preload("res://Sounds/LudumDare54Space.mp3")
	await get_tree().create_timer(0.5).timeout
	play()


func _on_finished():
	play()
