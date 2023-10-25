extends AnimatedSprite2D

func _ready():
	if not material or not material is ShaderMaterial:
		print(Global.shaderExlosion)
		material = ShaderMaterial.new()   

	material.shader = Global.shaderExlosion
	$".".visible = false
	
	
func stop_shader():
	$".".visible = false


func _input(event):
	if event.is_action_pressed("emp") && (Global.empPower >= 5):
		$".".visible = true
		Global.magnet = true
		Global.empPower = 0
		$"../Shoot".play()
		$"../Timer".start()  # Start timer node um shader zu deaktivieren


func _on_timer_timeout():
	stop_shader()
