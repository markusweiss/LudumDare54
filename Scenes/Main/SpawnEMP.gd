extends Node2D

var spawnEMP = preload("res://Scenes/Items/emp.tscn")


func _on_create_magnet_timeout():
	var emp_temp = spawnEMP.instantiate()
	add_child(emp_temp)
