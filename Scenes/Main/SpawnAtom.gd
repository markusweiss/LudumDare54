extends Node2D

var spawnatom = preload("res://Scenes/Items/atom.tscn")


func _on_create_atom_timeout():
	var atom_temp = spawnatom.instantiate()
	add_child(atom_temp)

