extends Node2D

var spawnPortal = preload("res://Scenes/Portal/portal.tscn")
var setPortal = false

func _physics_process(delta):
	if(Global.empMegaBeam >= Global.empMegaBeamWin && !setPortal):
		print("win")
		openPortal()
		setPortal = true

func openPortal():
	var portal_temp = spawnPortal.instantiate()
	position = Vector2(288, 274)
	add_child(portal_temp)

	

