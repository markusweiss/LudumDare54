extends Node2D

var spawnPortal = preload("res://Scenes/Portal/portal.tscn")
var setPortal = false

func openPortal():
	var portal_temp = spawnPortal.instantiate()
	position = Vector2(288, 274)
	add_child(portal_temp)

func _process(delta):
	if(Global.empMegaBeam >= Global.empMegaBeamWin && setPortal == false):
		print("win")
		openPortal()
		setPortal = true

