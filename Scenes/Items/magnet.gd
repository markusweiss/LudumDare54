extends Area2D


func _on_body_entered(body):
	Global.magnet=true
	print("magnet")
