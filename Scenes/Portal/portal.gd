extends AnimatedSprite2D

func _ready():
	print(Global.shader_material)
	if not material or not material is ShaderMaterial:
		print("no material")
		material = ShaderMaterial.new()
   
	material.shader = Global.shader
