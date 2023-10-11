extends Node


var magnet = false
var laserSpeed = 30
var scoreTogether = 0
var highScore = 0
var empPower = 0
var empCapsules = 0
var empMegaBeam = 0
var empMegaBeamWin = 25

#enum itemTypes {asteroid, magnet, emp, portalpower}

#var shader_material = ShaderMaterial.new()
var shaderPortal = preload("res://Scenes/Portal/portal.gdshader")
var shaderExlosion = preload("res://Scenes/Explosion/explosion.gdshader")

var setPortal = false

