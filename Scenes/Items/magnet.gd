extends Area2D

var speed = 100
var rng = RandomNumberGenerator.new()
var rand_int = rng.randi_range(76, 500)

var rotation_speed = 30

func _ready():
	rotation_degrees = rand_int
	position = Vector2(rand_int, 0)
	
func _process(delta):
	rotate(deg_to_rad(rotation_speed * delta))
	position.y += speed * delta
	if position.y > 700:
		queue_free()


func _on_body_entered(body):
	Global.magnet = true
	queue_free()
