extends Node2D

var spawnasteroid = preload("res://Scenes/Items/asteroid.tscn")


func _on_create_asteroid_timeout():
	var asteriod_temp = spawnasteroid.instantiate()
	add_child(asteriod_temp)
