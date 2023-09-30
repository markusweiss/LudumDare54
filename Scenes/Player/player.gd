extends CharacterBody2D

const SPEED = 300.0
const STOP_LEFT = 40
const STOP_RIGHT = 540
const STOP_TOP = 140
const STOP_BOTTOM = 600
const INTERPOLATION_SPEED = 8.0

var target_velocity = Vector2() 

func _ready():
	$CollisionShape2D.disabled = false

func _physics_process(delta):
	var horizontal_direction = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var vertical_direction = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	# Horizontal Movement
	target_velocity.x = horizontal_direction * SPEED

	# Vertical Movement
	target_velocity.y = vertical_direction * SPEED

	# Interpolieren Sie die Geschwindigkeit, um ein sanftes Nachziehen zu erzeugen
	velocity = velocity.lerp(target_velocity, INTERPOLATION_SPEED * delta)

	move_and_slide()

	position.x = clamp(position.x, STOP_LEFT, STOP_RIGHT)
	position.y = clamp(position.y, STOP_TOP, STOP_BOTTOM)

func _on_hitzone_area_entered(area):
	if(area.is_in_group("wall")):
		print("dead")
		queue_free()
