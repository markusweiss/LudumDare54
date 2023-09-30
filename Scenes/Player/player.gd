extends CharacterBody2D

const SPEED = 300.0
const STOP_LEFT = 40
const STOP_RIGHT = 540
const STOP_TOP = 140
const STOP_BOTTOM = 600

func _ready():
	$CollisionShape2D.disabled = false

func _physics_process(delta):
	var horizontal_direction = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var vertical_direction = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	# Horizontal Movement
	if horizontal_direction != 0:
		velocity.x = horizontal_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# Vertical Movement
	if vertical_direction != 0:
		velocity.y = vertical_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

	position.x = clamp(position.x, STOP_LEFT, STOP_RIGHT)
	position.y = clamp(position.y, STOP_TOP, STOP_BOTTOM)

func _on_hitzone_area_entered(area):
	print("dead")
	# queue_free()
