extends RichTextLabel

var original_y = position.y
var amplitude = 20.0  # Die Höhe des Hüpfens
var speed = 2.0      # Die Geschwindigkeit des Hüpfens
var time_elapsed = 0.0

func _process(_delta):
	time_elapsed += _delta
	var offset = amplitude * sin(speed * time_elapsed)
	position.y = original_y + offset
