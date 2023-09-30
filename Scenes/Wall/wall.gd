extends Area2D

var speed = 100  # Geschwindigkeit, mit der sich das Hindernis bewegt
var target_y = 0  # X-Koordinate, auf die das Hindernis zusteuert
var direction = Vector2.ZERO
var magnet = false

func _ready():
	# Setzen Sie die anfängliche Richtung basierend auf der aktuellen Position
	if position.y < target_y && !magnet:
		direction = Vector2(0, -1)  # Bewegung nach rechts
	else:
		direction = Vector2(0, 1)  # Bewegung nach links

func _physics_process(delta):
	if Global.magnet:
		position += -direction * speed * delta
	else:
		position += direction * speed * delta
		
	if position.y <= 10:
		Global.magnet=false
		
	if position.y >= 600:
		Global.magnet=true
	



