extends Area2D

var speed = 40  # Geschwindigkeit, mit der sich das Hindernis bewegt
var target_x = 0  # X-Koordinate, auf die das Hindernis zusteuert
var direction = Vector2.ZERO
var magnet = false

func _ready():
	# Setzen Sie die anfängliche Richtung basierend auf der aktuellen Position
	if position.x < target_x && !magnet:
		direction = Vector2(1, 0)  # Bewegung nach rechts
	else:
		direction = Vector2(-1, 0)  # Bewegung nach links

func _physics_process(delta):
	if magnet:
		position += -direction * speed * delta
	else:
		position += direction * speed * delta
		
	if position.x >= 500:
		magnet=false
	



func _on_area_entered(area):
	magnet=true
