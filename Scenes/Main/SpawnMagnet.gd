extends Node2D

var spawnmagnet = preload("res://Scenes/Items/magnet.tscn")


func _on_create_magnet_timeout():
	var magnet_temp = spawnmagnet.instantiate()
	add_child(magnet_temp)
