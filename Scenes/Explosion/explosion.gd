extends Sprite2D

var shader_active = false
var shader_material : ShaderMaterial

func _ready():
	shader_material = ShaderMaterial.new()
	shader_material.shader = null
	material = shader_material
	set_process(false) # Deaktiviert den Prozess, um den Shader anfangs auszuschalten

func activate_shader():
	#shader_active = not shader_active
	var shader = preload("res://Scenes/Explosion/explosion.gdshader") # Ändern Sie path_to_your_shader.shader in den richtigen Pfad
	shader_material.shader = shader
	set_process(true) # Aktiviert den Prozess, um den Shader zu aktualisieren

func stop_shader():
	shader_material.shader = null
	set_process(false) # Deaktiviert den Prozess, um den Shader auszuschalten


func _input(event):
		
	if event.is_action_pressed("emp") && (Global.empPower >= 1  && !shader_active):
		self.material = shader_material
		Global.magnet = true
		Global.empPower = 0
		$"../Shoot".play()
		activate_shader()
		$"../Timer".start()  # Start the timer node to deactivate the shader after 1 second
		
#		if(Global.empMegaBeam >= Global.empMegaBeamWin):
#			Global.magnet = true
#			Global.empPower = 0
#			$"../Shoot".play()
#			activate_shader()
#			$"../Timer".start()
#			await get_tree().create_timer(1.5).timeout
#			get_tree().change_scene_to_file("res://Scenes/Win/win.tscn")

func _on_timer_timeout():
	stop_shader()
