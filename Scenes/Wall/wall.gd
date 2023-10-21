extends Area2D

var speed = Global.laserSpeed
var target_y = 0
var direction = Vector2.ZERO
var magnet = false

func _ready():
	# Setzen Sie die anfängliche Richtung basierend auf der aktuellen Position
	if position.y < target_y && !magnet:
		direction = Vector2(0, -1)
	else:
		direction = Vector2(0, 1)

func _physics_process(delta):
	if Global.scoreTogether >= 20000:
		match Global.level:
			1:
				speed = 60
			2:
				speed = 70
			3: 
				speed = 80
	
	if Global.scoreTogether >= 60000:
		match Global.level:
			1:
				speed = 120
			2:
				speed = 130
			3: 
				speed = 140
		
	if Global.scoreTogether >= 130000:
		match Global.level:
			1:
				speed = 160
			2:
				speed = 175
			3: 
				speed = 185
	
	if Global.magnet:
		position += -direction * speed * delta
	else:
		position += direction * speed * delta
		
	if position.y <= 10:
		Global.magnet=false
		
	if position.y >= 600:
		Global.magnet=true


