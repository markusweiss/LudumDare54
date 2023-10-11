extends AnimatedSprite2D

func _ready():
	if not material or not material is ShaderMaterial:
		material = ShaderMaterial.new()
   
	material.shader = Global.shaderPortal
