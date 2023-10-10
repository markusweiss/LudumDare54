extends AnimatedSprite2D

func _ready():
	if not material or not material is ShaderMaterial:
		print("no material")
		material = ShaderMaterial.new()
   
	material.shader = Global.shaderPortal
